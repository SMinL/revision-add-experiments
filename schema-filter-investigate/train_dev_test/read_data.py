import pandas as pd
import csv
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
    # 读取 CSV 文件
    flag_cell_value = 'no'
    paths = ['dev_mix_new.csv']
    for path in paths:
        print(path)
        df = pd.read_csv(path)

        # 按行遍历并检查 'fuse question' 列是否是 NaN
        questions = []
        tgts = []
        db_names = []
        for index, row in df.iterrows():
            db_names.append(row['db_id'])

            if not pd.isna(row['fused_question']):  # 判断是不是 NaN
                questions.append(row['fused_question'])
                if not pd.isna(row['revised_vql']):
                    tgts.append(row['revised_vql'])
                else:
                    tgts.append(row['VQL'])
            else:
                questions.append(row['nl_queries'])
                tgts.append(row['VQL'])

        assert len(questions) == len(tgts) == len(db_names)
        print(len(questions))

        all_data = []
        for i,(question,tgt,db_name) in enumerate(zip(questions,tgts,db_names)):
            print(i)
            db = os.path.join(
                "/Users/smin/Desktop/A-polyu-work-3/bias-project//0827_add_column_in_question/1999_train_dev_test_split_data/database-wo-cell-value-0903/",
                db_name,
                db_name + ".sqlite")
            # print('db',db)
            # print('db_name',db_name)
            db_schema = get_schema(db)

            db_info = get_database_info(db)

            assert db_info != False

            if flag_cell_value == 'no':
                question_new = question.strip().lower() + '@sep@' + db_schema
            else:
                if db_info == None:
                    question_new = question.strip().lower() + '@sep@' + db_schema
                else:
                    question_new = question.strip().lower() + '@sep@' + db_info
            all_data.append([question_new,tgt])

            file_name = path.split('.')[0] + '_new_codet5.csv'
            data_path = file_name
            with open(data_path, mode='w', newline='', encoding='utf-8') as file:
                writer = csv.writer(file)
                # Write the header
                writer.writerow(["text", "summary"])
                # Write the rows
                for data in all_data:
                    # flag = detect(summary.lower())
                    # if flag == 1:
                    writer.writerow([data[0], data[1]])

