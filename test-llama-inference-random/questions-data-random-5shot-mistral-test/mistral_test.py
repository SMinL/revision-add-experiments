from vllm import LLM, SamplingParams
import torch
import json
from transformers import AutoTokenizer

def test_examples_processing(path):
    all_processed_examples = []
    # 定义 Llama 2 模型名称和最大 token 长度
    model_name = "/home/wyd/model/Mistral-7B-v0.1"  # 根据实际使用的模型调整名称
    max_token_length = 4096  # Llama 2 默认的最大 token 长度

    # 加载 Llama 2 的分词器
    tokenizer = AutoTokenizer.from_pretrained(model_name,trust_remote_code=True)

    question_json = json.load(open(path,'r'))
    # print(question_json)
    questions = question_json['questions']
    # print(questions)
    for i,question in enumerate(questions[:]):
        # print(question)
        prompt = question['prompt']
        # print(prompt)
        prompt_list = prompt.split('\n\n')
        prompt_prefix = prompt_list[0]
        prompt_cases = prompt_list[1:-1]
        # print(len(prompt_cases))
        prompt_target = prompt_list[-1]

        # 示例字符串输入
        input_text = "\n\n".join(prompt_cases)

        # 使用分词器将字符串转换为 token
        tokens = tokenizer.tokenize(input_text)

        # 计算 token 的数量
        token_count = len(tokens)

        while (1):
            if token_count > max_token_length:
                new_prompt_cases = prompt_cases[:-1]
                input_text = '\n\n'.join(new_prompt_cases)
                tokens = tokenizer.tokenize(input_text)
                token_count = len(tokens)
            else:
                new_prompt_cases = prompt_cases
                break
        processed_prompt = "\n\n".join([prompt_prefix ]+ new_prompt_cases + [prompt_target])
        print(processed_prompt)
        # exit(0)
        all_processed_examples.append(processed_prompt)

    return all_processed_examples
        # exit(0)




if __name__ == '__main__':
    # device = torch.device("cuda:1")
    llm = LLM(model="/home/wyd/model/Mistral-7B-v0.1",trust_remote_code=True)
    sampling_params = SamplingParams(temperature=0.9, max_tokens=128, top_p=0.95)
    
    # paths = ['questions-v0.json','questions-v1.json','questions-v2.json','questions-v3.json','questions-v4.json']
    paths = ['questions-v0.json','questions-v1.json','questions-v2.json','questions-v3.json','questions-v4.json']
    for path in paths:
        all_predictions = []
        all_processed_examples = test_examples_processing(path)
        print(len(all_processed_examples))
        for prompt in all_processed_examples:
            outputs = llm.generate([prompt], sampling_params)
            # Print the outputs.
            for output in outputs:
                prompt = output.prompt
                generated_text = output.outputs[0].text
                generated_text = ' '.join(generated_text.split('\n'))
                all_predictions.append(generated_text)
                # print(f"Prompt: {prompt!r}, Generated text: {generated_text!r}")

        written_path = path.split('.')[0] + '_prediction.txt'
        with open(written_path,'w') as file:
            file.write('\n'.join(all_predictions))
