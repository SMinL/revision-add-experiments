#!/usr/bin/env python
# coding=utf-8
# @summerzhao: 2021/09/02
import re
import csv
import sys
import os
import argparse

'''
    once obtain vis text, transfer text to VQL, and split intp part
    measure tree_accuracy / tree component accurcy
'''
structure_tokens1 = ['visualize', 'select', 'from', 'where', 'group by', 'order by', 'limit', 'intersect', 'union', 'except', 'bin', 'by']
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
    s = s.replace("\"","\'")
    #s = re.sub('_', ' ', s)
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
    num_tree, num_vis, num_axis, num_data = 0,0,0,0
    trees, viss, axiss, datas = [],[],[],[]
    for pred, target in zip(preds, targets):

        pred_dict = to_VQL(pred)
        target_dict = to_VQL(target)
        # print(pred_dict)
        # exit(0)

        tmp_num_tree, tmp_num_vis, tmp_num_axis, tmp_num_data = 0,0,0,0
        if pred_dict == target_dict: #overall accuracy
            tmp_num_tree = 1
            trees.append(['correct',target,pred])
        else:
            trees.append(['wrong',target,pred])

        if pred_dict['visualize'] == target_dict['visualize']: #visualize classification accuracy
            tmp_num_vis = 1
            viss.append(['correct','@sep@'.join(target_dict['visualize']),'@sep@'.join(pred_dict['visualize'])])
        else:
            viss.append(['wrong','@sep@'.join(target_dict['visualize']),'@sep@'.join(pred_dict['visualize'])])

        if (pred_dict['select'] == target_dict['select']) and (pred_dict['from'] == target_dict['from']):
            tmp_num_axis = 1
            axiss.append(['correct','@sep@'.join(target_dict['select']),'@sep@'.join(pred_dict['select']),'@sep@'.join(target_dict['from']),'@sep@'.join(pred_dict['from'])])
        else:
            axiss.append(
                ['wrong', '@sep@'.join(target_dict['select']),'@sep@'.join(pred_dict['select']),'@sep@'.join(target_dict['from']),'@sep@'.join(pred_dict['from'])])

        data_part = (target_dict['where'] == []) and (target_dict['group'] == []) and (target_dict['bin'] == []) and (target_dict['order'] == [])
        pred_data_part = (pred_dict['where'] == []) and (pred_dict['group'] == []) and (pred_dict['bin'] == []) and (pred_dict['order'] == [])
        #
        # if data_part and pred_data_part:
        #     tmp_num_data = 1
        if not data_part and ((target_dict['where'] == pred_dict['where']) and
                              (target_dict['group'] == pred_dict['group']) and 
                              (target_dict['bin'] == pred_dict['bin']) and 
                              (target_dict['order'] == pred_dict['order'])):

            tmp_num_data = 1
            datas.append(
                ['correct', '@sep@'.join(target_dict['where']), '@sep@'.join(pred_dict['where']), '@sep@'.join(target_dict['group']), '@sep@'.join(pred_dict['group']),
                 '@sep@'.join(target_dict['bin']), '@sep@'.join(pred_dict['bin']), '@sep@'.join(target_dict['order']), '@sep@'.join(pred_dict['order'])])
        else:
            datas.append(
                ['wrong', '@sep@'.join(target_dict['where']), '@sep@'.join(pred_dict['where']), '@sep@'.join(target_dict['group']), '@sep@'.join(pred_dict['group']),
                 '@sep@'.join(target_dict['bin']), '@sep@'.join(pred_dict['bin']), '@sep@'.join(target_dict['order']), '@sep@'.join(pred_dict['order'])])

        num_tree = num_tree + tmp_num_tree
        num_vis = num_vis + tmp_num_vis
        num_axis = num_axis + tmp_num_axis
        num_data = num_data + tmp_num_data

    acc_vis = num_vis / len(preds)
    acc_axis = num_axis / len(preds)
    acc_data = num_data / len(preds)
    acc_tree = num_tree / len(preds)
    return acc_tree, acc_vis, acc_axis, acc_data, trees, viss, axiss, datas





if __name__ == '__main__':

    target_path = 'our/RESULTS_MODEL-gpt-3.5-turbo-0-test.txt'
    pred_path = 'test.sql.tgt'
    preds = []
    targets = []
    print(pred_path)

    try:
        with open(pred_path, 'r') as file:
            # 使用循环逐行读取文件内容
            for line in file:
                # 处理每一行的数据，例如打印或进行其他操作
                # line = " ".join(line.strip().split()[1:])
                # print(line.strip().split('Visualize')[1])
                # line = 'Visualize ' + line.strip().split('Visualize')[1].strip()
                # print(line)
                preds.append(deal_nl(line.strip()))
                # exit(0)
        file.close()

    except FileNotFoundError:
        print(f"文件 '{pred_path}' 未找到。")
    except Exception as e:
        print(f"发生错误：{e}")

    # exit(0)



    try:
        with open(target_path, 'r') as file:
            # 使用循环逐行读取文件内容
            for line in file:
                # 处理每一行的数据，例如打印或进行其他操作
                tmp_line = line.strip().split('\t')[0]
                targets.append(deal_nl(tmp_line))
        file.close()

    except FileNotFoundError:
        print(f"文件 '{target_path}' 未找到。")
    except Exception as e:
        print(f"发生错误：{e}")

    print(len(preds))
    print(len(targets))
    print(len(preds))

    # gold = [deal_nl('Visualize PIE SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5')]
    # target = [deal_nl('Visualize PIE SELECT Name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5')]
    trees, viss, axiss, datas = [],[],[],[]
    acc_tree, acc_vis, acc_axis, acc_data, trees, viss, axiss, datas = tree_accuracy(preds[:], targets[:])
    # print(targets[191])
    # print(preds[191])
    # acc_tree, acc_vis, acc_axis, acc_data, trees, viss, axiss, datas = tree_accuracy([preds[191]], [targets[191]])

    print('acc_tree',acc_tree*100)
    print('acc_vis', acc_vis*100)
    print('acc_axis', acc_axis*100)
    print('acc_data', acc_data*100)

    # p1 = pred_path.split('/')[-2].split('_')[1]
    # p2 = pred_path.split('/')[-2].split('_')[3]
    # p3 = pred_path.split('/')[-1]
    #
    # with open('./2000_train_test_results/' + p1 + '_' + p2 + '_' + p3 + '_acc_overall_analyze.tsv', 'w') as tsv_file1:
    #     tsv_writer = csv.writer(tsv_file1,delimiter='\t')
    #     tsv_writer.writerows(trees)

    #
    # with open(p1 + '_' + p2 + '_' + p3 + '_acc_vis_analyze.tsv', 'w') as tsv_file2:
    #     tsv_writer = csv.writer(tsv_file2,delimiter='\t')
    #     tsv_writer.writerows(viss)
    #
    #
    # with open(p1 + '_' + p2 + '_' + p3 + '_acc_axis_analyze.tsv', 'w') as tsv_file3:
    #     tsv_writer = csv.writer(tsv_file3,delimiter='\t')
    #     tsv_writer.writerows(axiss)
    #
    #
    # with open(p1 + '_' + p2 + '_' + p3 + '_acc_data_analyze.tsv', 'w') as tsv_file4:
    #     tsv_writer = csv.writer(tsv_file4,delimiter='\t')
    #     tsv_writer.writerows(datas)

    # gold = to_VQL(gold)
    # target = to_VQL(target)


