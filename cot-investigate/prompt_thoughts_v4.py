class Prompt_Thought:
    # v1 coarse two thought: easy + medium
    prompt_thought_v1 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */
    /* Question: Show me about the distribution of name and meter_100 in a bar chart . */
    Schema: Table swimmer, columns = [*,ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
    Table stadium, columns = [*,ID, name, Capacity, City, Country, Opening_year] 
    Table event, columns = [*,ID, Name, Stadium_ID, Year]
    Table record, columns = [*,ID, Result, Swimmer_ID, Event_ID]
    Thought: Let's think step by step. In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
    Based on the tables and columns, the Schema_links are [swimmer.name, swimmer.meter_100]
    Additionally, in the question, we are asked to show 'a bar chart'
    So the chart type is bar
    Therefore, according to the schema_links '[swimmer.name, swimmer.meter_100]', the chart type 'bar' and Question, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

    /* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
    Schema: Table region, columns = [*,Region_ID, Region_name, Date, Label, Format, Catalogue]
    Table party, columns = [*,Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
    Table member, columns = [*,Member_ID, Member_Name, Party_ID, In_office]
    Table party_events, columns = [*,Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
    Thought: Let's think step by step. In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
    Based on the tables and columns, the Schema_links are [party.Minister]
    Additionally, in the question, we are asked 'a bar chart'
    So the chart type is bar
    Therefore, according to the schema_links '[party.Minister]', the chart type 'bar' and Question, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC\n\n'''

    # v2 add the group by keyword in the 2nc example thought: easy + medium
    prompt_thought_v2 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */
    /* Question: Show me about the distribution of name and meter_100 in a bar chart . */
    Schema: Table swimmer, columns = [*,ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
    Table stadium, columns = [*,ID, name, Capacity, City, Country, Opening_year] 
    Table event, columns = [*,ID, Name, Stadium_ID, Year]
    Table record, columns = [*,ID, Result, Swimmer_ID, Event_ID]
    Thought: Let's think step by step. In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
    Based on the tables and columns, the Schema_links are [swimmer.name, swimmer.meter_100]
    Additionally, in the question, we are asked to show 'a bar chart', so the chart type is bar
    Therefore, according to the above thought, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

    /* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
    Schema: Table region, columns = [*,Region_ID, Region_name, Date, Label, Format, Catalogue]
    Table party, columns = [*,Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
    Table member, columns = [*,Member_ID, Member_Name, Party_ID, In_office]
    Table party_events, columns = [*,Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
    Thought: Let's think step by step. In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
    Based on the tables and columns, the Schema_links are [party.Minister]
    Additionally, in the question, we are asked 'a bar chart', so the chart type is bar
    Additionally, in the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
    Additionally, in the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
    Additionally, in the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
    Therefore, according to the above thought, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC\n\n'''

    # v3: three fine-grained examples: easy + medium + hard
    prompt_thought_v3 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */
    /* Question: Show me about the distribution of name and meter_100 in a bar chart . */
    Schema: Table swimmer, columns = [*,ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
    Table stadium, columns = [*,ID, name, Capacity, City, Country, Opening_year] 
    Table event, columns = [*,ID, Name, Stadium_ID, Year]
    Table record, columns = [*,ID, Result, Swimmer_ID, Event_ID]
    Thought: Let's think step by step. In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
    Based on the tables and columns, the Schema_links are [swimmer.name, swimmer.meter_100]
    Additionally, in the question, we are asked to show 'a bar chart', so the chart type is bar
    Therefore, according to the above thought, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

    /* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
    Schema: Table region, columns = [*,Region_ID, Region_name, Date, Label, Format, Catalogue]
    Table party, columns = [*,Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
    Table member, columns = [*,Member_ID, Member_Name, Party_ID, In_office]
    Table party_events, columns = [*,Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
    Thought: Let's think step by step. In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
    Based on the tables and columns, the Schema_links are [party.Minister]
    Additionally, in the question, we are asked 'a bar chart', so the chart type is bar
    Additionally, in the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
    Additionally, in the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
    Additionally, in the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
    Therefore, according to the above thought, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC

    /* Question: For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order . */
    Schema: Table regions, columns = [*,REGION_ID, REGION_NAME]
    Table countries, columns = [*,COUNTRY_ID, COUNTRY_NAME, REGION_ID]
    Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
    Table jobs, columns = [*,JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
    Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
    Table job_history, columns = [*,EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
    Table locations, columns = [*,LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
    Thought: Let's think step by step. In the question 'For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order .', we are asked 'employees whose first name does not contain the letter M ' so we need column = [employees.FIRST_NAME], 'the hire date and the corresponding salaries', so we need column = [employees.HIRE_DATE,employees.SALARY]
    Based on the tables, columns and the Schema_links are [employees.HIRE_DATE,employees.SALARY]
    Additionally, in the question, we are asked 'a line chart', so the chart type is line
    Additionally, in the question, we are asked 'first name does not contain the letter M', so we need 'WHERE first_name NOT LIKE '%M%''
    Additionally, in the question, we are asked to 'show X-axis from high to low order ', so we need 'ORDER BY HIRE_DATE DESC'
    Therefore, according to the above thought, the VQL answer for the given question is:
    Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC\n\n'''

    # v4: four fine-grained examples: easy + medium + hard + extra hard (this extra hard is really hard, but its dbid is as the same as the hard one.)
    prompt_thought_v4 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */
    /* Question: Show me about the distribution of name and meter_100 in a bar chart . */
    Schema: Table swimmer, columns = [*,ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
    Table stadium, columns = [*,ID, name, Capacity, City, Country, Opening_year] 
    Table event, columns = [*,ID, Name, Stadium_ID, Year]
    Table record, columns = [*,ID, Result, Swimmer_ID, Event_ID]
    Thought: Let's think step by step. In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
    Based on the tables and columns, the Schema_links are [swimmer.name, swimmer.meter_100]
    Additionally, in the question, we are asked to show 'a bar chart'
    So the chart type is bar
    Therefore, according to the above thought, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

    /* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
    Schema: Table region, columns = [*,Region_ID, Region_name, Date, Label, Format, Catalogue]
    Table party, columns = [*,Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
    Table member, columns = [*,Member_ID, Member_Name, Party_ID, In_office]
    Table party_events, columns = [*,Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
    Thought: Let's think step by step. In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
    Based on the tables and columns, the Schema_links are [party.Minister]
    Additionally, in the question, we are asked 'a bar chart', so the chart type is bar
    Additionally, in the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
    Additionally, in the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
    Additionally, in the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
    Therefore, according to the above thought, the VQL answer for the given Question is: */
    Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC

    /* Question: For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order . */
    Schema: Table regions, columns = [*,REGION_ID, REGION_NAME]
    Table countries, columns = [*,COUNTRY_ID, COUNTRY_NAME, REGION_ID]
    Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
    Table jobs, columns = [*,JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
    Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
    Table job_history, columns = [*,EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
    Table locations, columns = [*,LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
    Thought: Let's think step by step. In the question 'For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order .', we are asked 'employees whose first name does not contain the letter M ' so we need column = [employees.FIRST_NAME], 'the hire date and the corresponding salaries', so we need column = [employees.HIRE_DATE,employees.SALARY]
    Based on the tables, columns and the Schema_links are [employees.HIRE_DATE,employees.SALARY]
    Additionally, in the question, we are asked 'a line chart', so the chart type is line
    Additionally, in the question, we are asked 'first name does not contain the letter M', so we need 'WHERE first_name NOT LIKE '%M%''
    Additionally, in the question, we are asked to 'show X-axis from high to low order ', so we need 'ORDER BY HIRE_DATE DESC'
    Therefore, according to the above thought, the VQL answer for the given question is:
    Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC
    
    /* Question: For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y . */
    Schema:
    Table regions, columns = [*,REGION_ID, REGION_NAME]
    Table countries, columns = [*,COUNTRY_ID, COUNTRY_NAME, REGION_ID]
    Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
    Table jobs, columns = [*,JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
    Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
    Table job_history, columns = [*,EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
    Table locations, columns = [*,LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
    Thought: Let's think step by step. In the question 'For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y .', we are asked 'those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need column = [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID], 'the distribution of job_id and the sum of manager_id , and group by attribute job_id ', so we need column = [employees.JOB_ID,employees.MANAGER_ID]
    Based on the tables, columns and the Schema_links, the Schema_links are [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID,employees.JOB_ID,employees.MANAGER_ID]
    Additionally, in the question, we are asked 'a bar chart', so the chart type is bar
    Additionally, in the question, we are asked 'whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need 'WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40''
    Additionally, in the question, we are asked to 'group by attribute job_id ', so we need 'GROUP BY JOB_ID'
    Additionally, in the question, we are asked to 'the sum of manager_id ', so we need 'SUM(MANAGER_ID)'
    Additionally, in the question, we are asked to 'order in asc by the Y ', so we need 'ORDER BY SUM(MANAGER_ID) ASC'
    Finally, according to the above thought, the VQL answer for the given question is:
    Answer: Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC\n\n'''

    # v5: four fine-grained examples organized by GPT: easy + medium + hard + extra hard (this extra hard is really hard, but its dbid is as the same as the hard one.)
    prompt_thought_v5 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */
        
/* Question: Show me about the distribution of name and meter_100 in a bar chart . */
Schema: Table swimmer, columns = [*,ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
Table stadium, columns = [*,ID, name, Capacity, City, Country, Opening_year] 
Table event, columns = [*,ID, Name, Stadium_ID, Year]
Table record, columns = [*,ID, Result, Swimmer_ID, Event_ID]
Thought Process : 
(1) Columns Needed :
In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
Based on the above analysis, the needed columns are [swimmer.name, swimmer.meter_100]
(2) Chart Type :
In the question, we are asked to show 'a bar chart', so the chart type is bar
(3) Additional Conditions :
There is no additional conditions in this question.
According to the above thought process, the VQL answer for the given Question is: 
Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

/* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
Schema: Table region, columns = [*,Region_ID, Region_name, Date, Label, Format, Catalogue]
Table party, columns = [*,Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
Table member, columns = [*,Member_ID, Member_Name, Party_ID, In_office]
Table party_events, columns = [*,Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
Thought Process : 
(1) Columns Needed :
In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
Based on the above analysis, the needed columns are [party.Minister]
(2) Chart Type :
In the question, we are asked to show 'a bar chart', so the chart type is bar
(3) Additional Conditions :
In the question, we are asked 'a bar chart', so the chart type is bar
In the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
In the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
In the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
According to the above thought process, the VQL answer for the given Question is: 
Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC

/* Question: For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order . */
Schema: Table regions, columns = [*,REGION_ID, REGION_NAME]
Table countries, columns = [*,COUNTRY_ID, COUNTRY_NAME, REGION_ID]
Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
Table jobs, columns = [*,JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
Table job_history, columns = [*,EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
Table locations, columns = [*,LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
Thought Process : 
(1) Columns Needed :
In the question 'For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order .', we are asked 'employees whose first name does not contain the letter M ' so we need column = [employees.FIRST_NAME], 'the hire date and the corresponding salaries' so we need column = [employees.HIRE_DATE,employees.SALARY]
Based on the above analysis, the needed columns are [employees.HIRE_DATE,employees.SALARY]
(2) Chart Type :
In the question, we are asked 'a line chart', so the chart type is line
(3) Additional Conditions :
In the question, we are asked 'first name does not contain the letter M', so we need 'WHERE first_name NOT LIKE '%M%''
In the question, we are asked to 'show X-axis from high to low order ', so we need 'ORDER BY HIRE_DATE DESC'
According to the above thought process, the VQL answer for the given question is:
Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC

/* Question: For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y . */
Schema:
Table regions, columns = [*,REGION_ID, REGION_NAME]
Table countries, columns = [*,COUNTRY_ID, COUNTRY_NAME, REGION_ID]
Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
Table jobs, columns = [*,JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
Table job_history, columns = [*,EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
Table locations, columns = [*,LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
Thought Process : 
(1) Columns Needed : 
In the question 'For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y .', we are asked 'those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need column = [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID], 'the distribution of job_id and the sum of manager_id , and group by attribute job_id ', so we need column = [employees.JOB_ID,employees.MANAGER_ID]
Based on the above analysis, the needed columns are [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID,employees.JOB_ID,employees.MANAGER_ID]
(2) Chart Type :
In the question, we are asked 'a bar chart', so the chart type is bar
(3) Additional Conditions :
In the question, we are asked 'whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need 'WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40''
In the question, we are asked to 'group by attribute job_id ', so we need 'GROUP BY JOB_ID'
In the question, we are asked to 'the sum of manager_id ', so we need 'SUM(MANAGER_ID)'
In the question, we are asked to 'order in asc by the Y ', so we need 'ORDER BY SUM(MANAGER_ID) ASC'
According to the above thought process, the VQL answer for the given question is:
Answer: Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC\n\n'''

    # v6: four fine-grained examples organized by GPT: easy + medium + hard + extra hard (this extra hard is really hard, but its dbid is as the same as the hard one.)
    #remove * in the tables of the thought examples
    prompt_thought_v6 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */

/* Question: Show me about the distribution of name and meter_100 in a bar chart . */
Schema: Table swimmer, columns = [ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
Table stadium, columns = [ID, name, Capacity, City, Country, Opening_year] 
Table event, columns = [ID, Name, Stadium_ID, Year]
Table record, columns = [ID, Result, Swimmer_ID, Event_ID]
Thought Process : 
(1) Columns Needed :
In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
Based on the above analysis, the needed columns are [swimmer.name, swimmer.meter_100]
(2) Chart Type :
In the question, we are asked to show 'a bar chart', so the chart type is bar
(3) Additional Conditions :
There is no additional conditions in this question.
According to the above thought process, the VQL answer for the given Question is: 
Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

/* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
Schema: Table region, columns = [Region_ID, Region_name, Date, Label, Format, Catalogue]
Table party, columns = [Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
Table member, columns = [Member_ID, Member_Name, Party_ID, In_office]
Table party_events, columns = [Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
Thought Process : 
(1) Columns Needed :
In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
Based on the above analysis, the needed columns are [party.Minister]
(2) Chart Type :
In the question, we are asked to show 'a bar chart', so the chart type is bar
(3) Additional Conditions :
In the question, we are asked 'a bar chart', so the chart type is bar
In the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
In the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
In the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
According to the above thought process, the VQL answer for the given Question is: 
Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC

/* Question: For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order . */
Schema: Table regions, columns = [REGION_ID, REGION_NAME]
Table countries, columns = [COUNTRY_ID, COUNTRY_NAME, REGION_ID]
Table departments, columns = [DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
Table jobs, columns = [JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
Table employees, columns = [EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
Table job_history, columns = [EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
Table locations, columns = [LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
Thought Process : 
(1) Columns Needed :
In the question 'For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order .', we are asked 'employees whose first name does not contain the letter M ' so we need column = [employees.FIRST_NAME], 'the hire date and the corresponding salaries' so we need column = [employees.HIRE_DATE,employees.SALARY]
Based on the above analysis, the needed columns are [employees.HIRE_DATE,employees.SALARY]
(2) Chart Type :
In the question, we are asked 'a line chart', so the chart type is line
(3) Additional Conditions :
In the question, we are asked 'first name does not contain the letter M', so we need 'WHERE first_name NOT LIKE '%M%''
In the question, we are asked to 'show X-axis from high to low order ', so we need 'ORDER BY HIRE_DATE DESC'
According to the above thought process, the VQL answer for the given question is:
Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC

/* Question: For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y . */
Schema:
Table regions, columns = [REGION_ID, REGION_NAME]
Table countries, columns = [COUNTRY_ID, COUNTRY_NAME, REGION_ID]
Table departments, columns = [DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
Table jobs, columns = [JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
Table employees, columns = [EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
Table job_history, columns = [EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
Table locations, columns = [LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
Thought Process : 
(1) Columns Needed : 
In the question 'For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y .', we are asked 'those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need column = [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID], 'the distribution of job_id and the sum of manager_id , and group by attribute job_id ', so we need column = [employees.JOB_ID,employees.MANAGER_ID]
Based on the above analysis, the needed columns are [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID,employees.JOB_ID,employees.MANAGER_ID]
(2) Chart Type :
In the question, we are asked 'a bar chart', so the chart type is bar
(3) Additional Conditions :
In the question, we are asked 'whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need 'WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40''
In the question, we are asked to 'group by attribute job_id ', so we need 'GROUP BY JOB_ID'
In the question, we are asked to 'the sum of manager_id ', so we need 'SUM(MANAGER_ID)'
In the question, we are asked to 'order in asc by the Y ', so we need 'ORDER BY SUM(MANAGER_ID) ASC'
According to the above thought process, the VQL answer for the given question is:
Answer: Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC\n\n'''
    #v5 please add the chart type tips
    #table number；如果table number不超过某个区间就不做schemalinking 也可以试试
    # gpt3.5帮忙整理的逻辑
    #v6 not diffusion tips
    #v7 try to combine with the similar examples
    #v8 we can set the hardness
    #v9 revise the generation

    # v7: four fine-grained examples organized by GPT: easy + medium + hard + extra hard (this extra hard is really hard, but its dbid is as the same as the hard one.)
    # remove * in the tables of the thought examples
    #table name = xxx （实验证明没啥用处）
    prompt_thought_v7 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */

    /* Question: Show me about the distribution of name and meter_100 in a bar chart . */
    Schema: Table name = swimmer, columns = [ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
    Table name = stadium, columns = [ID, name, Capacity, City, Country, Opening_year] 
    Table name = event, columns = [ID, Name, Stadium_ID, Year]
    Table name = record, columns = [ID, Result, Swimmer_ID, Event_ID]
    Thought Process : 
    (1) Columns Needed :
    In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
    Based on the above analysis, the needed table is 'swimmer', and the needed columns are [name, meter_100]
    (2) Chart Type :
    In the question, we are asked to show 'a bar chart', so the chart type is bar
    (3) Additional Conditions :
    There is no additional conditions in this question.
    According to the above thought process, the VQL answer for the given Question is: 
    Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

    /* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
    Schema: Table name = region, columns = [Region_ID, Region_name, Date, Label, Format, Catalogue]
    Table name = party, columns = [Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
    Table name = member, columns = [Member_ID, Member_Name, Party_ID, In_office]
    Table name = party_events, columns = [Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
    Thought Process : 
    (1) Columns Needed :
    In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
    Based on the above analysis, the needed table is 'party', and the needed columns are [Minister]
    (2) Chart Type :
    In the question, we are asked to show 'a bar chart', so the chart type is bar
    (3) Additional Conditions :
    In the question, we are asked 'a bar chart', so the chart type is bar
    In the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
    In the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
    In the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
    According to the above thought process, the VQL answer for the given Question is: 
    Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC

    /* Question: For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order . */
    Schema: Table name: regions, columns = [REGION_ID, REGION_NAME]
    Table name = countries, columns = [COUNTRY_ID, COUNTRY_NAME, REGION_ID]
    Table name = departments, columns = [DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
    Table name = jobs, columns = [JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
    Table name = employees, columns = [EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
    Table name = job_history, columns = [EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
    Table name = locations, columns = [LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
    Thought Process : 
    (1) Columns Needed :
    In the question 'For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order .', we are asked 'employees whose first name does not contain the letter M ' so we need column = [employees.FIRST_NAME], 'the hire date and the corresponding salaries' so we need column = [employees.HIRE_DATE,employees.SALARY]
    Based on the above analysis, the needed table is 'employees', and the needed columns are [HIRE_DATE,SALARY]
    (2) Chart Type :
    In the question, we are asked 'a line chart', so the chart type is line
    (3) Additional Conditions :
    In the question, we are asked 'first name does not contain the letter M', so we need 'WHERE first_name NOT LIKE '%M%''
    In the question, we are asked to 'show X-axis from high to low order ', so we need 'ORDER BY HIRE_DATE DESC'
    According to the above thought process, the VQL answer for the given question is:
    Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC

    /* Question: For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y . */
    Schema:
    Table name = regions, columns = [REGION_ID, REGION_NAME]
    Table name = countries, columns = [COUNTRY_ID, COUNTRY_NAME, REGION_ID]
    Table name = departments, columns = [DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
    Table name = jobs, columns = [JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
    Table name = employees, columns = [EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
    Table name = job_history, columns = [EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
    Table name = locations, columns = [LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
    Thought Process : 
    (1) Columns Needed : 
    In the question 'For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y .', we are asked 'those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need column = [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID], 'the distribution of job_id and the sum of manager_id , and group by attribute job_id ', so we need column = [employees.JOB_ID,employees.MANAGER_ID]
    Based on the above analysis, the needed table is 'employees', and the needed columns are [SALARY,COMMISSION_PCT,DEPARTMENT_ID,JOB_ID,MANAGER_ID]
    (2) Chart Type :
    In the question, we are asked 'a bar chart', so the chart type is bar
    (3) Additional Conditions :
    In the question, we are asked 'whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need 'WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40''
    In the question, we are asked to 'group by attribute job_id ', so we need 'GROUP BY JOB_ID'
    In the question, we are asked to 'the sum of manager_id ', so we need 'SUM(MANAGER_ID)'
    In the question, we are asked to 'order in asc by the Y ', so we need 'ORDER BY SUM(MANAGER_ID) ASC'
    According to the above thought process, the VQL answer for the given question is:
    Answer: Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC\n\n'''

    #v8
    prompt_thought_v8 = '''/* You will be an excellent VQL writer.
    
    #task description：
    Given a question in natural language and a database schema including table and column names. VQL writers answer the question with a VQL sequence.
    (Question, Database schema) -> VQL
    
    #VQL follows a format 'Visualize context1 SELECT context2' .
    Here, context1 should be a chart type chose according to the given question, and the chart type includes 'SCATTER', 'LINE', 'BAR', 'PIE'." 
    Context2 is a sequence like SQL, select A from B group by A order by count ( * ) desc limit 1;
    #
    
    "/* As shown in above examples, the answers look like: 'Visualize context1 SELECT context2'. " \
                    "Here, context1 should be a chart type chose according to the given question, " \
                    "and the chart type includes 'SCATTER', 'LINE', 'BAR', 'PIE'." \
                    " Context2 is a sequence like SQL. */"
    
    
    Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */

        /* Question: Show me about the distribution of name and meter_100 in a bar chart . */
        Schema: Table name = swimmer, columns = [ID, name, Nationality, meter_100, meter_200, meter_300, meter_400, meter_500, meter_600, meter_700, Time]
        Table name = stadium, columns = [ID, name, Capacity, City, Country, Opening_year] 
        Table name = event, columns = [ID, Name, Stadium_ID, Year]
        Table name = record, columns = [ID, Result, Swimmer_ID, Event_ID]
        Thought Process : 
        (1) Columns Needed :
        In the question 'show me about the distribution of name and meter_100 in a bar chart .', we are asked 'the distribution of name and meter_100', so we need column = [swimmer.name, swimmer.meter_100]
        Based on the above analysis, the needed table is 'swimmer', and the needed columns are [name, meter_100]
        (2) Chart Type :
        In the question, we are asked to show 'a bar chart', so the chart type is bar
        (3) Additional Conditions :
        There is no additional conditions in this question.
        According to the above thought process, the VQL answer for the given Question is: 
        Answer: Visualize BAR SELECT name , meter_100 FROM swimmer

        /* Question: Give me a bar chart showing the total number of each minister , I want to list in asc by the total number . */
        Schema: Table name = region, columns = [Region_ID, Region_name, Date, Label, Format, Catalogue]
        Table name = party, columns = [Party_ID, Minister, Took_office, Left_office, Region_ID, Party_name]
        Table name = member, columns = [Member_ID, Member_Name, Party_ID, In_office]
        Table name = party_events, columns = [Event_ID, Event_Name, Party_ID, Member_in_charge_ID]
        Thought Process : 
        (1) Columns Needed :
        In the question 'Give me a bar chart showing the total number of each minister , I want to list in asc by the total number .', we are asked 'the total number of each minister', so we need column = [party.Minister]
        Based on the above analysis, the needed table is 'party', and the needed columns are [Minister]
        (2) Chart Type :
        In the question, we are asked to show 'a bar chart', so the chart type is bar
        (3) Additional Conditions :
        In the question, we are asked 'a bar chart', so the chart type is bar
        In the question, we are asked 'the total number of each minister', so we need to 'COUNT(Minister)'
        In the question, we are asked 'each minister', so we need to 'GROUP BY Minister'
        In the question, we are asked 'list in asc by the total number', so we need to 'ORDER BY COUNT(Minister) ASC'
        According to the above thought process, the VQL answer for the given Question is: 
        Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC

        /* Question: For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order . */
        Schema: Table name: regions, columns = [REGION_ID, REGION_NAME]
        Table name = countries, columns = [COUNTRY_ID, COUNTRY_NAME, REGION_ID]
        Table name = departments, columns = [DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
        Table name = jobs, columns = [JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
        Table name = employees, columns = [EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
        Table name = job_history, columns = [EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
        Table name = locations, columns = [LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
        Thought Process : 
        (1) Columns Needed :
        In the question 'For those employees whose first name does not contain the letter M , give me a line chart to show the hire date and the corresponding salaries , and show X-axis from high to low order .', we are asked 'employees whose first name does not contain the letter M ' so we need column = [employees.FIRST_NAME], 'the hire date and the corresponding salaries' so we need column = [employees.HIRE_DATE,employees.SALARY]
        Based on the above analysis, the needed table is 'employees', and the needed columns are [HIRE_DATE,SALARY]
        (2) Chart Type :
        In the question, we are asked 'a line chart', so the chart type is line
        (3) Additional Conditions :
        In the question, we are asked 'first name does not contain the letter M', so we need 'WHERE first_name NOT LIKE '%M%''
        In the question, we are asked to 'show X-axis from high to low order ', so we need 'ORDER BY HIRE_DATE DESC'
        According to the above thought process, the VQL answer for the given question is:
        Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC

        /* Question: For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y . */
        Schema:
        Table name = regions, columns = [REGION_ID, REGION_NAME]
        Table name = countries, columns = [COUNTRY_ID, COUNTRY_NAME, REGION_ID]
        Table name = departments, columns = [DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
        Table name = jobs, columns = [JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY]
        Table name = employees, columns = [EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
        Table name = job_history, columns = [EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
        Table name = locations, columns = [LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID]
        Thought Process : 
        (1) Columns Needed : 
        In the question 'For those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40 , visualize a bar chart about the distribution of job_id and the sum of manager_id , and group by attribute job_id , order in asc by the Y .', we are asked 'those employees whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need column = [employees.SALARY,employees.COMMISSION_PCT,employees.DEPARTMENT_ID], 'the distribution of job_id and the sum of manager_id , and group by attribute job_id ', so we need column = [employees.JOB_ID,employees.MANAGER_ID]
        Based on the above analysis, the needed table is 'employees', and the needed columns are [SALARY,COMMISSION_PCT,DEPARTMENT_ID,JOB_ID,MANAGER_ID]
        (2) Chart Type :
        In the question, we are asked 'a bar chart', so the chart type is bar
        (3) Additional Conditions :
        In the question, we are asked 'whose salary is in the range of 8000 and 12000 and commission is not null or department number does not equal to 40', so we need 'WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40''
        In the question, we are asked to 'group by attribute job_id ', so we need 'GROUP BY JOB_ID'
        In the question, we are asked to 'the sum of manager_id ', so we need 'SUM(MANAGER_ID)'
        In the question, we are asked to 'order in asc by the Y ', so we need 'ORDER BY SUM(MANAGER_ID) ASC'
        According to the above thought process, the VQL answer for the given question is:
        Answer: Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != \"null\" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC\n\n'''

