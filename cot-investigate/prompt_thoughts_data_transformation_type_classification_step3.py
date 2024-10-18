import json
import csv
import random
import os
import json
import openai
import time
import tiktoken
import copy
prompt_BIN_classification = ['''
Question: For all employees who have the letters D or S in their first name , visualize a bar chart about the distribution of hire_date and the average of salary bin hire_date by weekday , and order by the y-axis from high to low .
A: Let's think step by step. 
The question asks 'who have the letters D or S in their first name', so we need 'where' clause.
The question asks 'bin hire_date by weekday', so we need 'bin' clause.
The question asks 'order by the y-axis from high to low', so we need 'order' clause. 
Therefore, to answer this question, we need data transformations : where, bin, order
Label: "where", "bin", "order"''',
                             '''Question: Give me the comparison about the amount of Start_from over the Start_from , and group by attribute Is_full_time and bin start_from by weekday by a bar chart , and show in asc by the Y .
A: Let's think step by step. 
The question asks 'group by attribute Is_full_time', so we need 'group' clause.
The question asks 'bin start_from by weekday, so we need 'bin' clause.
The question asks 'show in asc by the Y', so we need 'order' clause. 
Therefore, to answer this question, we need data transformations : group, bin, order
Label: "group", "bin", "order"''',
                             '''Question: Bin all date of transactions into the YEAR interval , and sum the share count of each bin Return the result using a line chart , sort by the X from low to high .
A: Let's think step by step. 
The question asks 'Bin all date of transactions into the YEAR interval', so we need 'bin' clause.
The question asks 'sort by the X from low to high', so we need 'order' clause.
Therefore, to answer this question, we need data transformations : bin, order
Label: ""bin", "order"''',
                             '''Question: Give me the trend about the average of Shop_ID over Start_from , and group by attribute Is_full_time and bin start_from by time , and list from low to high by the x-axis .
A: Let's think step by step. 
The question asks 'group by attribute Is_full_time', so we need 'group' clause.
The question asks 'bin start_from by time', so we need 'bin' clause.
The question asks 'list from low to high by the x-axis', so we need 'order' clause.
Therefore, to answer this question, we need data transformations : group, bin, order
Label: "group", "bin", "order"''',
                             '''Question: Show me about the change of the sum of Employee_ID over Start_from bin start_from by time in a line chart .
A: Let's think step by step. 
The question asks 'bin start_from by time', so we need 'bin' clause.
Therefore, to answer this question, we need data transformations : bin
Label: "bin"
''']

prompt_EASY_classification = ['''
Question: Return a pie chart about the proportion of ACC_Regular_Season and Team_ID .
A: Let's think step by step. 
The question asks 'about the proportion of ACC_Regular_Season and Team_ID', it does not need data transformation clauses.
Therefore, to answer this question, we do not need data transformations.
Label: ""''',
                              '''Question: Just show the first name of the employee and list their manager's id in the Y-axis of the bar chart .
A: Let's think step by step. 
The question asks 'the first name of the employee and list their manager's id in the Y-axis of the bar chart', it does not need data transformation clauses.
Therefore, to answer this question, we do not need data transformations.
Label: ""''',
                              '''Question: List the dates and vote percents of elections in a bar chart .
A: Let's think step by step. 
The question asks 'List the dates and vote percents of elections in a bar chart .', it does not need data transformation clauses.
Therefore, to answer this question, we do not need data transformations.
Label: ""''',
                              '''Question: You can return a bar chart to show the employees' first name and the corresponding department's id .
A: Let's think step by step. 
The question asks 'a bar chart to show the employees' first name and the corresponding department's id', it does not need data transformation clauses.
Therefore, to answer this question, we do not need data transformations.
Label: ""''',
                              '''Question: Scatter plot to show school id on x axis and acc_percent on y axis .
A: Let's think step by step. 
The question asks 'show school id on x axis and acc_percent on y axis', it does not need data transformation clauses.
Therefore, to answer this question, we do not need data transformations.
Label: ""''']

prompt_GROUP_classification = ['''Question: Plot the average of age by grouped by home city as a bar graph , could you sort by the bar from high to low ?
A: Let's think step by step. 
The question asks 'grouped by home city', so we need 'group' clause.
The question asks 'sort by the bar from high to low', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: group, order
Label: "group", "order"''',
                               '''Question: Show the relation between team id and school_id for each All_Road using a scatter chart
A: Let's think step by step. 
The question asks 'the relation between team id and school_id for each All_Road', so we need 'group' clause.
Therefore, to answer this question, we need data transformations: group
Label: "group"''',
                               '''Question: Give me the comparison about the sum of Height over the Sex , and group by attribute Sex by a bar chart , and could you rank X from high to low order ?
A: Let's think step by step. 
The question asks 'group by attribute Sex by a bar chart', so we need 'group' clause
The question asks 'could you rank X from high to low order', so we need 'order' clause
Therefore, to answer this question, we need data transformations: group, order
Label: "group", "order"''',
                               '''Question:  What is the relationship between Team_ID and ACC_Percent , and group by attribute All_Road ?
A: Let's think step by step. 
The question asks 'group by attribute All_Road', so we need 'group' clause
Therefore, to answer this question, we need data transformations: group
Label: "group"''',
                               '''Question:  Plot mean age by grouped by sex as a bar graph
A: Let's think step by step. 
The question asks 'grouped by sex', so we need 'group' clause
Therefore, to answer this question, we need data transformations: group
Label: "group"''']

prompt_ORDER_classification = ['''Question: Plot sum capacity over openning year in a line chart , and could you display X-axis in ascending order ?
A: Let's think step by step. 
The question asks 'display X-axis in ascending order', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: order
Label: "order"''',
                               '''Question: Bar chart x axis type y axis the total number , list by the Y in desc please .
A: Let's think step by step. 
The question asks 'list by the Y in desc please', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: order
Label: "order"''',
                               '''Question: Display a bar chart for how many orchestras does each record company manage ? , display by the Y in ascending .
A: Let's think step by step. 
The question asks 'how many orchestras does each record company manage', so we need 'group' clause.
The question asks 'display by the Y in ascending', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: order
Label: "group", "order"''',
                               '''Question: Show the number of documents in different starting date and group by starting date with a line chart , list by the X in descending .
A: Let's think step by step. 
The question asks 'group by starting date with a line chart', so we need 'group' clause.
The question asks 'list by the X in descending', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: group, order
Label: "group", "order"''',
                               '''Question: Find ACC_Regular_Season and All_Games_Percent , and visualize them by a bar chart , I want to show X in desc order .
A: Let's think step by step. 
The question asks 'I want to show X in desc order', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: order
Label: "order"''']

prompt_WHERE_classification = ['''
Question: For those products with a price between 60 and 120 , visualize a bar chart about the distribution of name and manufacturer .
A: Let's think step by step. 
The question asks 'For those products with a price between 60 and 120', so we need 'where' clause.
Therefore, to answer this question, we need data transformations: where
Label: "where"''',
                               '''Question: A bar chart for what are the number of the category of music festivals with result "Awarded" ? , rank by the Y in descending .
A: Let's think step by step. 
The question asks 'the category of music festivals with result "Awarded" ?', so we need 'where' clause.
The question asks 'rank by the Y in descending', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: where, order
Label: "where", "order"''',
                               '''Question: How many rooms cost more than 120 , for each different decor Plot them as bar chart , and list by the Y from low to high .
A: Let's think step by step. 
The question asks 'How many rooms cost more than 120', so we need 'where' clause.
The question asks 'for each different decor', so we need 'group' clause.
The question asks 'list by the Y from low to high', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: where, order
Label: "where", "order"''',
                               '''Question: Visualize a bar chart for what is the id and weight of every pet who is older than 1 ? , and I want to list in desc by the X .
A: Let's think step by step. 
The question asks 'every pet who is older than 1', so we need 'where' clause.
The question asks 'I want to list in desc by the X', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: where, order
Label: "where", "order"''',
                               '''Question: Find the number of rooms with price higher than 120 for different decor Show bar chart , list by the decor in desc .
A: Let's think step by step. 
The question asks "with price higher than 120", so we need 'where' clause.
The question asks 'list by the decor in desc', so we need 'order' clause.
Therefore, to answer this question, we need data transformations: where, order
Label: "where", "order"''']

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

    start_index = 1
    end_index = 10000
    if start_index == 0:
        mode = "w"
    else:
        mode = "a"

    with open('0/data.transformation.type.txt', mode) as file:

        for i,line in enumerate(all_questions):
            print(i)
            if i < start_index:
                continue
            if i >= end_index:
                break
            try:
                random.shuffle(prompt_BIN_classification)
                random.shuffle(prompt_EASY_classification)
                random.shuffle(prompt_GROUP_classification)
                random.shuffle(prompt_ORDER_classification)
                random.shuffle(prompt_WHERE_classification)
                prompt_thought = prompt_BIN_classification[:2] + \
                                 prompt_EASY_classification[:2] + \
                                 prompt_GROUP_classification[:2] + \
                                 prompt_ORDER_classification[:2] + \
                                 prompt_WHERE_classification[:2]
                random.shuffle(prompt_thought)
                instruction = '\n\n'.join(prompt_thought) + '\n' + 'Question: ' + line + '\n'
                print(instruction)
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
                    # exit(0)








