import json
import re
import csv
import sys
import os
import argparse
from sys import flags

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
                ['wrong', 'where tgt', '@sep@'.join(target_dict['where']), 'where pred', '@sep@'.join(pred_dict['where']),
                 'group tgt','@sep@'.join(target_dict['group']), 'group pred','@sep@'.join(pred_dict['group']),
                 'bin tgt','@sep@'.join(target_dict['bin']), 'bin pred','@sep@'.join(pred_dict['bin']),
                 'order tgt','@sep@'.join(target_dict['order']),'order pred','@sep@'.join(pred_dict['order'])])

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
    paths = ['train_sql_spider_style_choose_schema_rat_link.json']
    for path in paths:
        train_data = json.load(open(path,'r'))

        data_transformation_tgts = []
        data_transformation_preds = []

        order_questions = []
        group_questions = []
        bin_questions = []
        where_questions = []
        easy_questions = []
        for i, data in enumerate(train_data):
            tgt = data['VQL'].lower()
            tgt_list = [t.strip() for t in tgt.split()]
            # if ('order' in tgt_list) or ('group' in tgt_list) or ('bin' in tgt_list) or ('where' in tgt_list):
            #     data_transformation_tgts.append(tgt)
            #     data_transformation_preds.append(pred)
            if 'order' in tgt_list:
                order_questions.append(train_data[i])
            if 'group' in tgt_list:
                group_questions.append(train_data[i])
            if 'bin' in tgt_list:
                bin_questions.append(train_data[i])
            if 'where' in tgt_list:
                where_questions.append(train_data[i])
            if ('order' not in tgt_list) and ('group' not in tgt_list) and ('bin' not in tgt_list) and ('where' not in tgt_list):
                easy_questions.append(train_data[i])

        with open('example_order' + '.json', 'w') as file:
            json.dump(order_questions, file, indent=4, ensure_ascii=False)
        with open('example_group' + '.json', 'w') as file:
            json.dump(group_questions, file, indent=4, ensure_ascii=False)
        with open('example_bin' + '.json', 'w') as file:
            json.dump(bin_questions, file, indent=4, ensure_ascii=False)
        with open('example_where' + '.json', 'w') as file:
            json.dump(where_questions, file, indent=4, ensure_ascii=False)
        with open('example_easy' + '.json', 'w') as file:
            json.dump(easy_questions, file, indent=4, ensure_ascii=False)
        print(len(order_questions)/float(len(train_data)))
        print(len(group_questions) / float(len(train_data)))
        print(len(bin_questions) / float(len(train_data)))
        print(len(easy_questions) / float(len(train_data)))

