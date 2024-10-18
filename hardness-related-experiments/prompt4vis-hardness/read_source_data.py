import json
import matplotlib.pyplot as plt
import seaborn as sns
if __name__ == '__main__':
    train_data = json.load(open('../train_sql_spider_style.json','r'))
    dev_data = json.load(open('../dev_sql_spider_style.json', 'r'))
    test_data = json.load(open('../test_sql_spider_style.json', 'r'))

    all_data = train_data + dev_data + test_data
    query_hardness_dict = {}
    for data in all_data:
        query = data['nl_queries'].strip().lower()
        hardness = data['hardness'].strip()
        query_hardness_dict[query] = hardness

    prompt_data = json.load(open('test/questions4.json','r'))
    prompt_examples = prompt_data['questions']

    all_example_hardness = []
    all_target_example_hardness = []
    for example in prompt_examples:
        prompt_list = example['prompt'].split('\n\n')
        prompt_prefix = prompt_list[0]
        prompt_cases = prompt_list[1:-1]
        prompt_target = prompt_list[-1]
        current_example_hardness = []
        for case in prompt_cases:
            print('case',case)
            query_case = case.split('\n')[0]
            print('query_case',query_case)
            clean_query_case = (query_case.split('Question:')[1].strip().replace('*/','')).strip().lower()
            print('clean_query_case', clean_query_case)
            case_hardness = query_hardness_dict[clean_query_case]
            print('case_hardness',case_hardness)
            if case_hardness == 'Extra Hard':
                case_hardness_score = 0.8
            elif case_hardness == 'Hard':
                case_hardness_score = 0.6
            elif case_hardness == 'Medium':
                case_hardness_score = 0.4
            else:
                case_hardness_score = 0.2
            current_example_hardness.append(case_hardness_score)
        all_example_hardness.append(sum(current_example_hardness)/len(current_example_hardness))

        prompt_target_case = prompt_target.split('\n')[0]
        clean_prompt_target_case = (prompt_target_case.split('Question:')[1].strip().replace('*/', '')).strip().lower()
        prompt_target_case_hardness = query_hardness_dict[clean_prompt_target_case]
        if prompt_target_case_hardness == 'Extra Hard':
            prompt_target_case_hardness_score = 0.8
        elif prompt_target_case_hardness == 'Hard':
            prompt_target_case_hardness_score = 0.6
        elif prompt_target_case_hardness == 'Medium':
            prompt_target_case_hardness_score = 0.4
        else:
            prompt_target_case_hardness_score = 0.2
        all_target_example_hardness.append(prompt_target_case_hardness_score)
    print('all_example_hardness',len(all_example_hardness))
    print('all_target_example_hardness', len(all_target_example_hardness))

    sorted_indices_all_target_example_hardness = [index for index, value in sorted(enumerate(all_target_example_hardness), key=lambda x: x[1])]
    sorted_all_target_example_hardness_list = sorted(all_target_example_hardness)

    sorted_all_example_hardness = [all_example_hardness[index] for index in sorted_indices_all_target_example_hardness]
    #
    # difficulty_target =   # 目标难度，值在0到1之间
    # average_difficulty = difficulty_target + np.random.normal(0, 0.1, 1000)  # 示范样本平均难度，加一些噪声
    hardness_dict = {}
    for i,(x, y) in enumerate(zip(all_target_example_hardness,all_example_hardness)):
        if x not in hardness_dict:
            hardness_dict[x] = [y]
        else:
            hardness_dict[x].append(y)
    avg_hardness_dict = {}
    for hardness in hardness_dict:
        avg_hardness_dict[hardness] = sum(hardness_dict[hardness])/float(len(hardness_dict[hardness]))

    print(avg_hardness_dict)
    # 绘制散点图及拟合线
    # 绘制散点图及拟合线
    # plt.figure(figsize=(10, 6))
    # sns.regplot(x=sorted_all_target_example_hardness_list[:10], y=sorted_all_example_hardness[:10], scatter_kws={'s': 10}, line_kws={'color': 'red'})
    # plt.xlabel("Target Difficulty")
    # plt.ylabel("Average Difficulty of Demonstrations")
    # plt.title("Fitting Analysis of Target Difficulty and Demonstration Average Difficulty")
    # plt.grid(True)
    # plt.show()



