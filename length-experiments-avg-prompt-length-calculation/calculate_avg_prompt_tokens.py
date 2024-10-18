import sys
import json

if __name__ == '__main__':
    # paths = ['prompt4vis/dev/questions-v0-prompt4vis.json','prompt4vis/dev/questions-v1-prompt4vis.json','prompt4vis/dev/questions-v2-prompt4vis.json','prompt4vis/dev/questions-v3-prompt4vis.json','prompt4vis/dev/questions-v4-prompt4vis.json']
    # paths = ['prompt4vis/dev/questions-v0-prompt4vis.json',
    #          'prompt4vis/dev/questions-v1-prompt4vis.json',
    #          'prompt4vis/dev/questions-v2-prompt4vis.json',
    #          'prompt4vis/dev/questions-v3-prompt4vis.json',
    #          'prompt4vis/dev/questions-v4-prompt4vis.json']
    # paths = ['prompt4vis/dev/questions-v4-prompt4vis.json']
    paths = ['length-target/dev/questions-4.json']
    for path in paths:
        json_datas = json.load(open(path, 'r'))
        # print(question_json)
        examples = json_datas['questions']
        all_prompt_tokens = []
        new_examples = []
        for i,example in enumerate(examples):
            print(path,i)
            prompt_token_length = example['prompt_tokens']
            all_prompt_tokens.append(prompt_token_length)
        print('path',path)
        print('avg',sum(all_prompt_tokens)/float(len(all_prompt_tokens)))


