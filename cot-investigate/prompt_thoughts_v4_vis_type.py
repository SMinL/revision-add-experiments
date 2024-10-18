import json
import csv
import random
import os
import json
import openai
import time
import tiktoken
import copy
prompt_thought_v2 = '''Question: Can you draw the trend of the average of capacity over the openning year ? , and sort by the x axis in desc .
A: Let's think step by step. The DV query for the question "draw the trend of" needs "line" chart type.
Label: "line"

Question: For all employees who have the letters D or S in their first name , visualize a bar chart about the distribution of hire_date and the average of salary bin hire_date by weekday , and order by the y-axis from high to low .
A: Let's think step by step. The DV query for the question "visualize a bar chart" needs "bar" chart type.
Label: "bar"

Question: Bar graph to show maximal weight from different pettype
A: Let's think step by step. The DV query for the question "Bar graph to show" needs "bar" chart type.
Label: "bar"

Question: Return the average age of captains in each class with a pie chart .
A: Let's think step by step. The DV query for the question "with a pie chart" needs "pie" chart type.
Label: "pie"
    
Question: Show each state and the number of addresses in each state by a bar chart , and could you list in asc by the Y-axis please ?
A: Let's think step by step. The DV query for the question "by a bar chart" needs "bar" chart type.
Label: "bar"
   
Question: A bar chart about what are the different affiliations , and what is the total enrollment of schools founded after 1850 for each enrollment type ? , list by the bars in desc .
A: Let's think step by step. The DV query for the question "A bar chart" needs "bar" chart type.
Label: "bar"   

Question: How many rooms have king beds ? Report the number for each decor type Plot them as bar chart , list by the x-axis in descending .
A: Let's think step by step. The DV query for the question "Plot them as bar chart" needs "bar" chart type.
Label: "bar"

Question: A bar chart for returning the number of the date of birth for all the guests with gender code "Male" .
A: Let's think step by step. The DV query for the question "A bar chart" needs "bar" chart type.
Label: "bar"
'''
def ask_chat(model, messages: list, temperature, n):
    openai.api_key = 'sk-Mjn2k6EOloa5LMKKB27c1c20DeC741Fd93C9B0E3BfDa2c2c'
    openai.api_base = "https://api.aigcbest.top/v1"
    response = openai.ChatCompletion.create(
        model=model,
        messages=messages,
        temperature=temperature,
        max_tokens=200,
        n=n
    )
    response_clean = [choice["message"]["content"] for choice in response["choices"]]
    if n == 1:
        response_clean = response_clean[0]
    return dict(
        response=response_clean,
        **response["usage"]
    )
def ask_llm(model: str, instruction, temperature: float, n:int):
    n_repeat = 0
    while True:
        try:
            messages = [{"role": "user", "content": instruction}]
            response = ask_chat(model, messages, temperature, n)
            response['response'] = [response['response']]
            break
        except openai.error.RateLimitError:
            n_repeat += 1
            print(f"Repeat for the {n_repeat} times for RateLimitError", end="\n")
            time.sleep(1)
            continue
        except json.decoder.JSONDecodeError:
            n_repeat += 1
            print(f"Repeat for the {n_repeat} times for JSONDecodeError", end="\n")
            time.sleep(1)
            continue
        except Exception as e:
            n_repeat += 1
            print(f"Repeat for the {n_repeat} times for exception: {e}", end="\n")
            time.sleep(1)
            continue

    return response

if __name__ == '__main__':
    print(prompt_thought_v2)

    all_test_data = json.load(open('0/test_sql_spider_style_choose_schema_rat_link.json','r'))
    all_questions = []
    for data in all_test_data:
        print(data)
        question = data['nl_queries']
        all_questions.append(question.strip())

    model = "gpt-3.5-turbo"
    n = 1

    i = 0
    # print(prompt_examples)
    # exit(0)

    start_index = 585
    end_index = 10000
    if start_index == 0:
        mode = "w"
    else:
        mode = "a"

    with open('0/vis_type.prediction', mode) as file:

        for i,line in enumerate(all_questions):
            print(i)
            if i < start_index:
                continue
            if i >= end_index:
                break
            try:

                instruction = prompt_thought_v2 + '\n' + 'Question: ' + line + '\n'
                # print(instruction)
                # exit(0)
                res = ask_llm(model, instruction, 0, n)
                print(res)
                # exit(0)
            except openai.error.InvalidRequestError:
                print(f"The {i}-th question has too much tokens! Return \"SELECT\" instead")
                res = ""
            if n == 1:
                for res in res["response"]:
                    file.write('Question: ' + line.strip() + '\n')
                    file.write(res + '\n')
                    file.write('*'*100 + '\n')








