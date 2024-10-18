import sys
import json
import re
def deal_nl(s):
    s = s.replace("\"", "")
    s = s.replace("\'", "")
    return s
if __name__ == '__main__':
    all_lines = []
    with open('0/data.transformation.type.txt','r') as file:
        for line in file:
            all_lines.append(line)
    all_lines_content = ' '.join(all_lines)
    all_lines_content_list = all_lines_content.strip().split('*'*100)
    print(len(all_lines_content_list))
    all_lines_content_cases = all_lines_content_list[:-1]

    labels = []
    for case in all_lines_content_cases:
        case_lines = case.strip().split('\n')
        labels.append(case_lines[-1])
    print(len(labels))
    for label in labels:
        deal_label = deal_nl(label)
        print(deal_label)




