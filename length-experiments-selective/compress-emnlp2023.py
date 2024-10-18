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
            print(path,i)
            prompt = example['prompt']
            prompt_list = prompt.split('\n\n')
            prompt_prefix = prompt_list[0]
            prompt_cases = prompt_list[1:-1]
            print(len(prompt_cases))
            prompt_target = prompt_list[-1]
            compress_prompt_cases = []
            for prompt_case in prompt_cases:
                compress_prompt_case, reduced_content = sc(prompt_case,reduce_ratio = 0.1)
                compress_prompt_cases.append(compress_prompt_case)
            processed_prompt = [prompt_prefix] + compress_prompt_cases + [prompt_target]
            new_prompt = '\n\n'.join(processed_prompt)
            example['prompt'] = new_prompt
            new_examples.append(example)

        new_json_datas = {}
        new_json_datas['args'] = json_datas["args"]
        new_json_datas['costs'] = json_datas["costs"]
        new_json_datas['questions'] = examples

        with open(path.split('.')[0] + '_new' + '.json', 'w') as file:
            json.dump(new_json_datas, file, indent=4, ensure_ascii=False)

