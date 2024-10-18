class Prompt_Thought:
    # v2 add the group by keyword in the 2nc example thought: easy + medium
    prompt_thought_v2 = '''/* Given a question and a database schema, an excellent VQL writer can write a VQL answer to the question. Now, I will first give you some examples of the chain of thoughts to write VQL answers. */

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
    Answer: Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC\n\n

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
    Answer: Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC\n\n

    
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