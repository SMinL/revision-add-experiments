import sys
import json
import re

def parse_sql(query):
    # Regular expressions to capture SELECT, FROM, GROUP BY, and ORDER BY content
    select_pattern = r"SELECT\s+(.*?)\s+FROM"
    from_pattern = r"FROM\s+(.*?)(\s+WHERE|\s+GROUP\s+BY|\s+ORDER\s+BY|$)"
    group_by_pattern = r"GROUP\s+BY\s+(.*?)(\s+ORDER\s+BY|$)"
    order_by_pattern = r"ORDER\s+BY\s+(.*)$"

    # Extract content using regex patterns
    select_content = re.search(select_pattern, query)
    from_content = re.search(from_pattern, query)
    group_by_content = re.search(group_by_pattern, query)
    order_by_content = re.search(order_by_pattern, query)

    # Store results in a dictionary
    result = {
        "SELECT": select_content.group(1).strip() if select_content else None,
        "FROM": from_content.group(1).strip() if from_content else None,
        "GROUP BY": group_by_content.group(1).strip().split()[0] if group_by_content else None,
        "ORDER BY": order_by_content.group(1).strip().split()[0] if order_by_content else None
    }

    return result

def parse_sql_function(query):
    # Regular expression to match SQL functions and their parameters
    function_pattern = r"(?i)(COUNT|MAX|MIN|SUM)\((.*?)\)"

    # Extract content using regex pattern
    function_content = re.findall(function_pattern, query)

    # Store results in a dictionary
    result = {func.upper(): param.strip() for func, param in function_content}

    return result

if __name__ == '__main__':
    all_examples = json.load(open('5/train_sql_spider_style_choose_schema_rat_link.json', 'r'))
    all_examples = json.load(open('5/dev_sql_spider_style_choose_schema_rat_link.json', 'r'))
    all_examples = json.load(open('5/test_sql_spider_style_choose_schema_rat_link.json', 'r'))
    all_labeled_schemas = []
    all_labeled_tables = []
    all_selected_tables = []
    all_selected_schemas = []
    for i,example in enumerate(all_examples):
        current_schemas = []
        print('*'*100)
        vql = example['VQL']
        predefine_schema = example['choose_schema_rat_link']
        print('vql:',vql)
        print('predefine_schema:',predefine_schema)

        separate_predefine_schemas = predefine_schema.split('@SEP@')

        current_selected_tables = []
        current_selected_columns = []
        for schema in separate_predefine_schemas:
            print('schema:',schema)
            print("schema.split('.')",schema.split('.'))
            if len(schema.split('.')) < 2:
                table = schema.split('columns')[0].strip().replace(',', '').replace('Table', '').strip()
                columns = schema.split('columns')[1].replace('= [', '').replace(']', '')
                columns_cases = [x.strip() for x in columns.split(',')]

                current_selected_tables.append(table)
                current_selected_columns = current_selected_columns + columns_cases
            else:
                table, sc = schema.split('.')
                current_selected_tables.append(table.strip())
                current_selected_columns.append(sc.strip())

        all_selected_tables.append(current_selected_tables)
        all_selected_schemas.append(current_selected_columns)


        parsed_sql = parse_sql(vql)
        print('result:',parsed_sql)
        current_tables = ''
        for key in parsed_sql:
            if key == 'SELECT':
                select_values = parsed_sql[key].strip().split(',')
                for value in select_values:
                    preprocessed_value = parse_sql_function(value)
                    print(preprocessed_value)
                    current_schemas.append(preprocessed_value)
            elif key == 'FROM':
                current_tables = parsed_sql[key].strip()
                if 'BIN' in current_tables:
                    current_tables = current_tables.split('BIN')[0]
                if 'where' in current_tables:
                    print('what before!!!')
                    current_tables = current_tables.split('where')[0]

                if len(current_tables.split()) > 1:
                    print('current_tables',current_tables)
            else:
                if parsed_sql[key] != None:
                    current_schemas.append(parsed_sql[key].strip())
        all_labeled_schemas.append(current_schemas)
        all_labeled_tables.append([current_tables.strip()])

    assert len(all_selected_tables) == len(all_selected_schemas) == len(all_labeled_tables) == len(all_labeled_schemas)

    all_table_prediction_acc = []
    for i, (select_table, labeled_table) in enumerate(zip(all_selected_tables,all_labeled_tables)):
        num = 0
        # print('select_table',select_table)
        # print('labeled_table',labeled_table)
        for lbt in labeled_table:
            if lbt in select_table:
                num = num + 1
        # print(num/len(select_table))#预测准确的概率
        all_table_prediction_acc.append(num/len(select_table))
        # exit(0)

    print('table:',sum(all_table_prediction_acc)/float(len(all_table_prediction_acc)))

    all_column_prediction_acc = []
    for i, (select_col, labeled_col) in enumerate(zip(all_selected_schemas,all_labeled_schemas)):
        num = 0
        # print('select_col',select_col)
        # print('labeled_col',labeled_col)
        for lbt in labeled_col:
            if lbt in select_col:
                num = num + 1
        # print(num/len(select_col))#预测准确的概率
        all_column_prediction_acc.append(num/len(select_col))
        # exit(0)

    print('column:',sum(all_column_prediction_acc)/float(len(all_column_prediction_acc)))
