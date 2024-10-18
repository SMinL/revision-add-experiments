import json
import re
import csv
import sys
import os
import argparse

'''
    once obtain vis text, transfer text to VQL, and split intp part
    measure tree_accuracy / tree component accurcy
'''
structure_tokens1 = ['visualize', 'select', 'from', 'where', 'group by', 'order by', 'limit', 'intersect', 'union',
                     'except', 'bin', 'by']
structure_tokens2 = ['join', 'on', 'as']
structure_tokens3 = ['not', 'between', '=', '>', '<', '>=', '<=', '!=', 'in', 'like', 'is', 'exists']
structure_tokens4 = ['-', '+', "*", '/']
structure_tokens5 = ['max', 'min', 'count', 'sum', 'avg']
structure_tokens6 = ['and', 'or', 'desc', 'asc']
structure_tokens7 = ['bar', 'pie', 'line', 'scatter', 'stacked bar', 'grouping line', 'grouping scatter']
structure_tokens = structure_tokens1 + structure_tokens2 + structure_tokens3 + structure_tokens4 + structure_tokens5 \
                   + structure_tokens6 + structure_tokens7

key_tokens = ['visualize', 'select', 'from', 'where', 'group', 'order', 'bin']


def deal_nl(s):
    s = re.sub('([.,!?])', r' \1 ', s)
    s = re.sub('\s{2,}', ' ', s)
    s = s.strip()
    s = s.replace("\"", "\'")
    # s = re.sub('_', ' ', s)
    return s


def to_VQL(text):
    '''
        text to VQL
    '''
    text = text.lower()
    text = text.split()
    VQL = []
    binning = True
    keywords_dict = {'group': [], 'bin': [], 'order': [], 'where': [], 'select': [], 'from': [], 'visualize': []}
    keyword = ''

    for i, token in enumerate(text):

        if token in key_tokens:
            keyword = token
            continue

        keywords_dict[keyword] = keywords_dict.get(keyword, []) + [token]
    return keywords_dict


def tree_accuracy(preds, targets):
    num_tree, num_vis, num_axis, num_data = 0, 0, 0, 0
    trees, viss, axiss, datas = [], [], [], []
    for pred, target in zip(preds, targets):

        pred_dict = to_VQL(pred)
        target_dict = to_VQL(target)
        # print(pred_dict)
        # exit(0)

        tmp_num_tree, tmp_num_vis, tmp_num_axis, tmp_num_data = 0, 0, 0, 0
        if pred_dict == target_dict:  # overall accuracy
            tmp_num_tree = 1
            trees.append(['correct', target, pred])
        else:
            trees.append(['wrong', target, pred])

        if pred_dict['visualize'] == target_dict['visualize']:  # visualize classification accuracy
            tmp_num_vis = 1
            viss.append(['correct', '@sep@'.join(target_dict['visualize']), '@sep@'.join(pred_dict['visualize'])])
        else:
            viss.append(['wrong', '@sep@'.join(target_dict['visualize']), '@sep@'.join(pred_dict['visualize'])])

        if (pred_dict['select'] == target_dict['select']) and (pred_dict['from'] == target_dict['from']):
            tmp_num_axis = 1
            axiss.append(['correct', '@sep@'.join(target_dict['select']), '@sep@'.join(pred_dict['select']),
                          '@sep@'.join(target_dict['from']), '@sep@'.join(pred_dict['from'])])
        else:
            axiss.append(
                ['wrong', '@sep@'.join(target_dict['select']), '@sep@'.join(pred_dict['select']),
                 '@sep@'.join(target_dict['from']), '@sep@'.join(pred_dict['from'])])

        data_part = (target_dict['where'] == []) and (target_dict['group'] == []) and (target_dict['bin'] == []) and (
                    target_dict['order'] == [])
        pred_data_part = (pred_dict['where'] == []) and (pred_dict['group'] == []) and (pred_dict['bin'] == []) and (
                    pred_dict['order'] == [])
        #
        # if data_part and pred_data_part:
        #     tmp_num_data = 1
        if not data_part and ((target_dict['where'] == pred_dict['where']) and
                              (target_dict['group'] == pred_dict['group']) and
                              (target_dict['bin'] == pred_dict['bin']) and
                              (target_dict['order'] == pred_dict['order'])):

            tmp_num_data = 1
            datas.append(
                ['correct', '@sep@'.join(target_dict['where']), '@sep@'.join(pred_dict['where']),
                 '@sep@'.join(target_dict['group']), '@sep@'.join(pred_dict['group']),
                 '@sep@'.join(target_dict['bin']), '@sep@'.join(pred_dict['bin']), '@sep@'.join(target_dict['order']),
                 '@sep@'.join(pred_dict['order'])])
        else:
            datas.append(
                ['wrong', '@sep@'.join(target_dict['where']), '@sep@'.join(pred_dict['where']),
                 '@sep@'.join(target_dict['group']), '@sep@'.join(pred_dict['group']),
                 '@sep@'.join(target_dict['bin']), '@sep@'.join(pred_dict['bin']), '@sep@'.join(target_dict['order']),
                 '@sep@'.join(pred_dict['order'])])

        num_tree = num_tree + tmp_num_tree
        num_vis = num_vis + tmp_num_vis
        num_axis = num_axis + tmp_num_axis
        num_data = num_data + tmp_num_data

    acc_vis = num_vis / len(preds)
    acc_axis = num_axis / len(preds)
    acc_data = num_data / len(preds)
    acc_tree = num_tree / len(preds)
    return acc_tree*100, acc_vis*100, acc_axis*100, acc_data*100, trees, viss, axiss, datas


if __name__ == '__main__':
    train_data = json.load(open('../hardness-related-experiments/train_sql_spider_style.json','r'))
    dev_data = json.load(open('../hardness-related-experiments/dev_sql_spider_style.json', 'r'))
    test_data = json.load(open('../hardness-related-experiments/test_sql_spider_style.json', 'r'))

    all_data = train_data + dev_data + test_data
    query_hardness_dict = {}
    for data in all_data:
        query = data['nl_queries'].strip().lower()
        hardness = data['hardness'].strip()
        query_hardness_dict[query] = hardness

    paths = ['../source-data-for-prompt4vis/source-data-and-results-in-experiments-fold-4/test-results-prompt4vis/questions.json']
    for path in paths:
        generated_path = path.replace('questions.json','RESULTS_MODEL-gpt-3.5-turbo.txt')
        predictions = []
        with open(generated_path,'r') as file:
            for line in file:
                predictions.append(line.strip())

        prompt_data = json.load(open(path,'r'))
        prompt_examples = prompt_data['questions']

        all_target_example_hardness = []
        all_target_responses = []
        for example in prompt_examples:
            prompt_list = example['prompt'].split('\n\n')
            prompt_target = prompt_list[-1]
            current_example_hardness = []

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
            all_target_responses.append(example['response'])
        print('all_target_example_hardness', len(all_target_example_hardness))
        print('all_target_responses', len(all_target_responses))
        print('predictions',len(predictions))

        extra_hard_tgts = []
        hard_tgts = []
        medium_tgts = []
        easy_tgts = []

        extra_hard_preds = []
        hard_preds = []
        medium_preds = []
        easy_preds = []
        for i,(hd, tgt, pred) in enumerate(zip(all_target_example_hardness,all_target_responses,predictions)):
            if hd == 0.8:
                extra_hard_tgts.append(deal_nl(tgt))
                extra_hard_preds.append(deal_nl(pred))
            elif hd == 0.6:
                hard_tgts.append(deal_nl(tgt))
                hard_preds.append(deal_nl(pred))
            elif hd == 0.4:
                medium_tgts.append(deal_nl(tgt))
                medium_preds.append(deal_nl(pred))
            else:
                easy_tgts.append(deal_nl(tgt))
                easy_preds.append(deal_nl(pred))
        print(len(extra_hard_tgts),len(extra_hard_preds))
        print(len(hard_tgts), len(hard_preds))
        print(len(medium_tgts), len(medium_preds))
        print(len(easy_tgts), len(easy_preds))

        acc_tree1, acc_vis1, acc_axis1, acc_data1, _, _, _, _ = tree_accuracy(extra_hard_tgts,extra_hard_preds)
        acc_tree2, acc_vis2, acc_axis2, acc_data2, _, _, _, _ = tree_accuracy(hard_tgts , hard_preds)
        acc_tree3, acc_vis3, acc_axis3, acc_data3, _, _, _, _ = tree_accuracy(medium_tgts, medium_preds)
        acc_tree4, acc_vis4, acc_axis4, acc_data4, _, _, _, _ = tree_accuracy(easy_tgts, easy_preds)

        print(acc_tree1, acc_vis1, acc_axis1, acc_data1)
        print(acc_tree2, acc_vis2, acc_axis2, acc_data2)
        print(acc_tree3, acc_vis3, acc_axis3, acc_data3)
        print(acc_tree4, acc_vis4, acc_axis4, acc_data4)


