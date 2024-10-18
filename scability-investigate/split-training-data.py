import sys
import json

if __name__ == '__main__':
    # 加载数据
    all_train_data = json.load(open('train_sql_spider_style_choose_schema_rat_link.json', 'r'))
    print('number of all train data:', len(all_train_data))

    # 切割数据，每段1000个
    chunk_size = 1000
    chunks = [all_train_data[0:i + chunk_size] for i in range(0, len(all_train_data), chunk_size)]

    # 保存每个切割后的子列表到单独的文件中
    for idx, chunk in enumerate(chunks):
        filename = f'train_data_part_{idx + 1}.json'
        with open(filename, 'w') as f:
            print(len(chunk))
            json.dump(chunk, f, indent=4)
        print(f'Saved {filename} with {len(chunk)} records.')

        tgts = []
        for data in chunk:
            print(data)
            # exit(0)
            tgts.append(data['VQL'])
        with open(filename.split('.')[0] + '.sql','w') as file:
            file.write('\n'.join(tgts))




