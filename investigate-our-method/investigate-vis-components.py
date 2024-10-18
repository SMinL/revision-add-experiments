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
            viss.append(['wrong', 'tgt','@sep@'.join(target_dict['visualize']), 'pred','@sep@'.join(pred_dict['visualize'])])

        if (pred_dict['select'] == target_dict['select']) and (pred_dict['from'] == target_dict['from']):
            tmp_num_axis = 1
            axiss.append(['correct', '@sep@'.join(target_dict['select']), '@sep@'.join(pred_dict['select']),
                          '@sep@'.join(target_dict['from']), '@sep@'.join(pred_dict['from'])])
        else:
            axiss.append(
                ['wrong', 'target', '@sep@'.join(target_dict['select']), 'predict', '@sep@'.join(pred_dict['select']),
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
                predictions.append(deal_nl(line.strip()))

        prompt_data = json.load(open(path,'r'))
        prompt_examples = prompt_data['questions']

        all_target_responses = []
        for example in prompt_examples:
            prompt_list = example['prompt'].split('\n\n')
            prompt_target = prompt_list[-1]
            all_target_responses.append(deal_nl(example['response']))
        print('all_target_responses', len(all_target_responses))
        print('predictions',len(predictions))

        assert len(all_target_responses) == len(predictions)

        acc_tree1, acc_vis1, acc_axis1, acc_data1,  trees, viss, axiss, datas = tree_accuracy(predictions,all_target_responses)

        print(acc_tree1, acc_vis1, acc_axis1, acc_data1)

        for tgt, pred, vis in zip(all_target_responses, predictions, viss):
            if 'wrong' in vis:
                print(vis)
                # print(tgt)
                # print(pred)
