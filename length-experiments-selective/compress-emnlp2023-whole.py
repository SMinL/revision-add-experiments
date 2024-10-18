# from vllm import LLM, SamplingParams
import torch
import json
from selective_context import SelectiveContext

if __name__ == '__main__':
    sc = SelectiveContext(model_type='gpt2', lang='en')
    paths = ['questions-v0-prompt4vis.json','questions-v1-prompt4vis.json','questions-v2-prompt4vis.json','questions-v3-prompt4vis.json','questions-v4-prompt4vis.json']
    for path in paths:
        json_datas = json.load(open(path, 'r'))
        # print(question_json)
        examples = json_datas['questions']
        new_examples = []
        for i,example in enumerate(examples[:10]):
            prompt = example['prompt']
            context, reduced_content = sc(prompt,reduce_ratio = 0.1)
            print('*'*100)
            print('context',context)
            print('reduced_content',reduced_content)
            example['prompt'] = context
            new_examples.append(example)

        new_json_datas = {}
        new_json_datas['args'] = json_datas["args"]
        new_json_datas['costs'] = json_datas["costs"]
        new_json_datas['questions'] = examples

        with open(path.split('.')[0] + '_new' + '.json', 'w') as file:
            json.dump(new_json_datas, file, indent=4, ensure_ascii=False)

