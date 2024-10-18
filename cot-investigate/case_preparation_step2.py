import json
import random
import sqlite3
import os
def get_schema(db):
    conn = sqlite3.connect(db)
    cursor = conn.cursor()
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()
    records = []
    for table_name in tables:
        # print(f"Table: {table_name[0]}")
        cursor.execute(f"PRAGMA table_info({table_name[0]})")
        columns = cursor.fetchall()
        current_table_columns = []
        for column in columns:
            # print(f"Column Name: {column[1]}")
            current_table_columns.append(column[1].lower())
        # print('columns = [' + ', '.join(current_table_columns) + ']')
        record = 'table ' + table_name[0].lower() + ', ' + 'columns = [ ' + ', '.join(current_table_columns) + ' ]'
        records.append(record)
    # print('number of records',len(records))
    record_of_current_db = ' ; '.join(records)
    # print(record_of_current_db)
    # exit(0)
    return record_of_current_db
    #table competition_record, columns = [ competition_id, farm_id, rank]



def get_database_info(db_file):
    # 连接到 SQLite 数据库
    conn = sqlite3.connect(db_file)
    conn.text_factory = str  # 处理可能的编码问题
    cursor = conn.cursor()
    # 获取所有表格名称
    try:
        cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
        tables = cursor.fetchall()

        result = []

        for table_name in tables:
            table_name = table_name[0]

            # 获取每个表格的列名及数据类型
            cursor.execute(f"PRAGMA table_info({table_name});")
            columns = cursor.fetchall()
            column_names = [column[1] for column in columns]
            column_types = [column[2] for column in columns]

            # 获取每个表格中的所有数据
            cursor.execute(f"SELECT * FROM {table_name};")
            rows = cursor.fetchall()

            # 处理每个列
            column_values = {col_name: set() for col_name in column_names}
            for row in rows:
                for col_name, value in zip(column_names, row):
                    if value is not None:  # 排除 None 值
                        column_values[col_name].add(value)

            # 格式化列信息
            columns_info = []
            for col_name, col_type in zip(column_names, column_types):
                col_type_str = 'text' if col_type.lower() in ['text', 'varchar'] else 'int'
                new_column_values = [x for x in column_values[col_name]][:5]
                values_str = ', '.join(map(str, new_column_values))
                columns_info.append(f"{col_name} ({col_type_str} | values : {values_str})")

            # 添加到结果列表
            result.append(f"table {table_name} , columns = [{', '.join(columns_info)}]")
        record_of_current_db = ' ; '.join(result)
        record_of_current_db = ' '.join(record_of_current_db.strip().split('\n'))
        # 关闭连接
        conn.close()

        return record_of_current_db
    except:
        return None


if __name__ == '__main__':
    bin_data = json.load(open('example_bin.json','r'))
    group_data = json.load(open('example_group.json', 'r'))
    order_data = json.load(open('example_order.json', 'r'))
    where_data = json.load(open('example_where.json', 'r'))
    easy_data = json.load(open('example_easy.json', 'r'))

    random.shuffle(bin_data)
    random.shuffle(group_data)
    random.shuffle(order_data)
    random.shuffle(where_data)
    random.shuffle(easy_data)

    with open('selected_data_bin.txt','w') as file:
        for data in bin_data:
            db_id = data['db_id']

            db = os.path.join(
                "/Users/smin/Desktop/polyu/project-cot-sql/sql-related/DAIL-SQL-VIS-SCHEMA-PROMPT-RANK-Influence-cross-v0/dataset/nvbench/database/",
                db_id,
                db_id + ".sqlite")
            print('db',db)
            db_info = get_schema(db)
            print('db_info',db_info)
            file.write('nl_queries:' + '\n')
            file.write(data['nl_queries'].strip() + '\n')
            file.write('database schema:' + '\n')
            file.write('\n'.join([x.strip() for x in data['choose_schema'].strip().split('@SEP@')]) + '\n')
            file.write('target dvq:' + '\n')
            file.write(data['VQL'].strip() + '\n')
            file.write('*'*100 + '\n')

    with open('selected_data_group.txt','w') as file:
        for data in group_data:
            db_id = data['db_id']

            db = os.path.join(
                "/Users/smin/Desktop/polyu/project-cot-sql/sql-related/DAIL-SQL-VIS-SCHEMA-PROMPT-RANK-Influence-cross-v0/dataset/nvbench/database/",
                db_id,
                db_id + ".sqlite")
            print('db',db)
            db_info = get_schema(db)
            print('db_info',db_info)
            file.write('nl_queries:' + '\n')
            file.write(data['nl_queries'].strip() + '\n')
            file.write('database schema:' + '\n')
            file.write('\n'.join([x.strip() for x in data['choose_schema'].strip().split('@SEP@')]) + '\n')
            file.write('target dvq:' + '\n')
            file.write(data['VQL'].strip() + '\n')
            file.write('*'*100 + '\n')

    with open('selected_data_order.txt','w') as file:
        for data in order_data:
            db_id = data['db_id']

            db = os.path.join(
                "/Users/smin/Desktop/polyu/project-cot-sql/sql-related/DAIL-SQL-VIS-SCHEMA-PROMPT-RANK-Influence-cross-v0/dataset/nvbench/database/",
                db_id,
                db_id + ".sqlite")
            print('db',db)
            db_info = get_schema(db)
            print('db_info',db_info)
            file.write('nl_queries:' + '\n')
            file.write(data['nl_queries'].strip() + '\n')
            file.write('database schema:' + '\n')
            file.write('\n'.join([x.strip() for x in data['choose_schema'].strip().split('@SEP@')]) + '\n')
            file.write('target dvq:' + '\n')
            file.write(data['VQL'].strip() + '\n')
            file.write('*'*100 + '\n')

    with open('selected_data_where.txt','w') as file:
        for data in where_data:
            db_id = data['db_id']

            db = os.path.join(
                "/Users/smin/Desktop/polyu/project-cot-sql/sql-related/DAIL-SQL-VIS-SCHEMA-PROMPT-RANK-Influence-cross-v0/dataset/nvbench/database/",
                db_id,
                db_id + ".sqlite")
            print('db',db)
            db_info = get_schema(db)
            print('db_info',db_info)
            file.write('nl_queries:' + '\n')
            file.write(data['nl_queries'].strip() + '\n')
            file.write('database schema:' + '\n')
            file.write('\n'.join([x.strip() for x in data['choose_schema'].strip().split('@SEP@')]) + '\n')
            file.write('target dvq:' + '\n')
            file.write(data['VQL'].strip() + '\n')
            file.write('*'*100 + '\n')

    with open('selected_data_easy.txt','w') as file:
        for data in easy_data:
            db_id = data['db_id']

            db = os.path.join(
                "/Users/smin/Desktop/polyu/project-cot-sql/sql-related/DAIL-SQL-VIS-SCHEMA-PROMPT-RANK-Influence-cross-v0/dataset/nvbench/database/",
                db_id,
                db_id + ".sqlite")
            print('db',db)
            db_info = get_schema(db)
            print('db_info',db_info)
            file.write('nl_queries:' + '\n')
            file.write(data['nl_queries'].strip() + '\n')
            file.write('database schema:' + '\n')
            file.write('\n'.join([x.strip() for x in data['choose_schema'].strip().split('@SEP@')]) + '\n')
            file.write('target dvq:' + '\n')
            file.write(data['VQL'].strip() + '\n')
            file.write('*'*100 + '\n')
