import sys
import json
import re
def deal_nl(s):
    s = re.sub('([.,!?])', r' \1 ', s)
    s = re.sub('\s{2,}', ' ', s)
    s = s.strip()
    s = s.replace("\"","\'")
    #s = re.sub('_', ' ', s)
    return s
if __name__ == '__main__':
    all_data = json.load(open('questions.json','r'))
    examples = all_data['questions']

    all_data_all = json.load(open('all/questions.json','r'))
    examples_all = all_data_all['questions']

    all_data_our = json.load(open('our/questions.json', 'r'))
    examples_our = all_data_our['questions']

    all_data_link = json.load(open('link/questions.json','r'))
    examples_link = all_data_link['questions']

    all_data_rat = json.load(open('rat/questions.json','r'))
    examples_rat = all_data['questions']


    all_tgts = []
    for example in examples:
        all_tgts.append(example['response'])
    print(len(all_tgts))

    rat_predictions = []
    with open('rat/RESULTS_MODEL-gpt-3.5-turbo.txt','r') as file:
        for line in file:
            rat_predictions.append(line.strip())

    all_predictions = []
    with open('all/RESULTS_MODEL-gpt-3.5-turbo.txt','r') as file:
        for line in file:
            all_predictions.append(line.strip())

    link_predictions = []
    with open('link/RESULTS_MODEL-gpt-3.5-turbo.txt','r') as file:
        for line in file:
            link_predictions.append(line.strip())

    our_predictions = []
    with open('our/RESULTS_MODEL-gpt-3.5-turbo.txt', 'r') as file:
        for line in file:
            our_predictions.append(line.strip())
    print('len(all_predictions)',len(all_predictions))
    print('len(link_predictions)', len(link_predictions))
    print('len(our_predictions)', len(our_predictions))
    print('len(rat_predictions)', len(rat_predictions))
    print('len(all_tgts)', len(all_tgts))
    assert len(all_predictions) == len(link_predictions) == len(our_predictions) == len(rat_predictions) == len(all_tgts)
    number_of_cases = []

    with open('written.txt','w') as file:
        for i,(all,link,our,rat,tgt) in enumerate(zip(all_predictions,link_predictions,our_predictions,rat_predictions,all_tgts)):
            all = deal_nl(all)
            tgt = deal_nl(tgt)
            link = deal_nl(link)
            our = deal_nl(our)
            rat = deal_nl(rat)
            # print('*'*100)
            # print('tgt',tgt)
            # print('all', all)
            # print('link', link)
            # print('our', our)
            # print('rat', rat)

            # exit(0)


            if tgt.lower().strip() == our.lower().strip() and tgt.lower().strip() != all.lower().strip() and tgt.lower().strip() != rat.lower().strip() and tgt.lower().strip() != link.lower().strip():
                print(i)
                print('all schema:')
                print(examples_all[i])
                print('answer:',all_predictions[i])
                print('#' * 100)
                print('our schema:')
                print(examples_our[i])
                print('answer:', our_predictions[i])
                print('#' * 100)
                print('link schema:')
                print(examples_link[i])
                print('answer:', link_predictions[i])
                print('#' * 100)
                print('rat schema:')
                print(examples_rat[i])
                print('answer:', rat_predictions[i])
                print('#' * 100)
                number_of_cases.append(all)
    print(len(number_of_cases))
