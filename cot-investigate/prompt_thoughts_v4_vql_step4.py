import json
import csv
import random
import os
import json
import openai
import time
import tiktoken
import copy
prompt_BIN_VQL = '''
Question: For all employees who have the letters D or S in their first name , visualize a bar chart about the distribution of hire_date and the average of salary bin hire_date by weekday , and order by the y-axis from high to low .
Database schema: Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
A: Let's think step by step. 
The question asks 'visualize a bar chart', so we need to 'Visualize BAR'
The question asks 'for all employees who have the letters D or S in their first name', so we need column employees.FIRST_NAME
The question asks 'the distribution of hire_rate and the average of salary bin hire_rate by weekday', so we need column employees.HIRE_DATE, employees.SALARY
The question asks 'the distribution of hire_date and the average of salary', so we need to 'SELECT HIRE_DATE , AVG(SALARY) FROM employees '
The question asks 'for all employees who have the letters D or S in their first name', so we need data transformation "where first_name LIKE '%D%' OR first_name LIKE '%S%'"
The question asks 'bin hire_date by weekday', so we need data transformation "BIN HIRE_DATE BY WEEKDAY"
The question asks 'and order by the y-axis from high to low', so we need data transformation 'ORDER BY AVG(SALARY)'
To this end, the targe DV query should be 'Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY WEEKDAY'
Label: Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY WEEKDAY

Question: Give me the comparison about the amount of Start_from over the Start_from , and group by attribute Is_full_time and bin start_from by weekday by a bar chart , and show in asc by the Y .
Database schema: Table hiring, columns = [*,Shop_ID, Employee_ID, Start_from, Is_full_time]
A: Let's think step by step. 
The question asks 'by a bar chart', so we need to 'Visualize BAR'
The question asks 'the amount of Start_from over the Start_from', so we need column hiring.Start_from
The question asks 'group by attribute Is_full_time', so we need column hiring.Is_full_time
The question asks 'Give me the comparison about the amount of Start_from over the Start_from', so we need to 'SELECT Start_from , COUNT(Start_from) FROM hiring'
The question asks 'group by attribute Is_full_time', so we need data transformation 'GROUP BY Is_full_time'
The question asks 'bin start_from by weekday', so we need data transformation 'bin start_from by weekday'
The question asks 'show in asc by the Y', so we need data transformation 'ORDER BY COUNT(Start_from) ASC' 
To this end, the target DV query should be 'Visualize BAR SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time ORDER BY COUNT(Start_from) ASC BIN Start_from BY WEEKDAY'
Label: Visualize BAR SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time ORDER BY COUNT(Start_from) ASC BIN Start_from BY WEEKDAY

Question: Bin all date of transactions into the YEAR interval , and sum the share count of each bin Return the result using a line chart , sort by the X from low to high .
Database schema: Table Transactions, columns = [*,transaction_id, investor_id, transaction_type_code, date_of_transaction, amount_of_transaction, share_count, other_details]
A: Let's think step by step.  
The question asks 'using a line chart', so we need to 'Visualize LINE'
The question asks 'all date of transactions', so we need column Transactions.date_of_transaction
The question asks 'sum the share count of each bin', so we need column hiring.share_count
The question asks 'Bin all date of transactions into the YEAR interval , and sum the share count of each bin', so we need to 'SELECT date_of_transaction , SUM(share_count) FROM TRANSACTIONS'
The question asks 'Bin all date of transactions into the YEAR interval', so we need data transformation 'BIN date_of_transaction BY YEAR'
The question asks 'sort by the X from low to high', so we need data transformation 'ORDER BY date_of_transaction ASC'
To this end, the target DV query should be 'Visualize LINE SELECT date_of_transaction , SUM(share_count) FROM TRANSACTIONS  ORDER BY date_of_transaction ASC BIN date_of_transaction BY YEAR'
Label: Visualize LINE SELECT date_of_transaction , SUM(share_count) FROM TRANSACTIONS  ORDER BY date_of_transaction ASC BIN date_of_transaction BY YEAR

Question: Give me the trend about the average of Shop_ID over Start_from , and group by attribute Is_full_time and bin start_from by time , and list from low to high by the x-axis .
Database schema: Table hiring, columns = [*,Shop_ID, Employee_ID, Start_from, Is_full_time]
A: Let's think step by step.  
The question asks 'Give me the trend', so we need to 'Visualize LINE'
The question asks 'about the average of Shop_ID over Start_from', so we need column hiring.Shop_ID, hiring.Start_from
The question asks 'group by attribute Is_full_time', so we need column hiring.Is_full_time
The question asks 'Give me the trend about the average of Shop_ID over Start_from', so we need to 'SELECT date_of_transaction , SUM(share_count) FROM TRANSACTIONS'
The question asks 'group by attribute Is_full_time', so we need data transformation 'GROUP BY Is_full_time'
The question asks 'bin start_from by time', so we need data transformation 'BIN Start_from BY YEAR'
The question asks 'list from low to high by the x-axis', so we need data transformation 'ORDER BY Start_from ASC'
To this end, the target DV query should be 'Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR'
Label: Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR

Question: Show me about the change of the sum of Employee_ID over Start_from bin start_from by time in a line chart .
Database schema: Table hiring, columns = [*,Shop_ID, Employee_ID, Start_from, Is_full_time]
A: Let's think step by step.  
The question asks 'a line chart', so we need to 'Visualize LINE'
The question asks 'Show me about the change of the sum of Employee_ID over Start_from', so we need column hiring.Employee_ID, hiring.Start_from
The question asks 'Show me about the change of the sum of Employee_ID over Start_from', so we need to 'SELECT Start_from , SUM(Employee_ID) FROM hiring'
The question asks 'bin start_from by time', so we need to 'BIN Start_from BY YEAR'
To this end, the target DV query should be 'Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring BIN Start_from BY YEAR'
Label: Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring BIN Start_from BY YEAR
'''

prompt_EASY_VQL = '''
Question: Return a pie chart about the proportion of ACC_Regular_Season and Team_ID .
Database schema: Table basketball_match, columns = [*,Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral]
A: Let's think step by step. 
The question asks 'Return a pie chart', so we need to 'Visualize PIE'
The question asks 'the proportion of ACC_Regular_Season and Team_ID', so we need the column basketball_match.ACC_Regular_Season, basketball_match.Team_ID
The question asks 'the proportion of ACC_Regular_Season and Team_ID', so we need to 'SELECT ACC_Regular_Season , Team_ID FROM basketball_match'
To this end, the targe DV query should be 'Visualize PIE SELECT ACC_Regular_Season , Team_ID FROM basketball_match'
Label: Visualize PIE SELECT ACC_Regular_Season , Team_ID FROM basketball_match

Question: Just show the first name of the employee and list their manager's id in the Y-axis of the bar chart .
Database schema: Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
A: Let's think step by step. 
The question asks 'the bar chart', so we need to 'Visualize BAR'
The question asks 'show the first name of the employee and list their manager's id', so we need the column employees.FIRST_NAME, employees.MANAGER_ID
The question asks 'show the first name of the employee and list their manager's id', so we need to 'SELECT FIRST_NAME , MANAGER_ID FROM employees'
To this end, the targe DV query should be 'Visualize BAR SELECT FIRST_NAME , MANAGER_ID FROM employees'
Label: Visualize BAR SELECT FIRST_NAME , MANAGER_ID FROM employees

Question: List the dates and vote percents of elections in a bar chart .
Database schema: Table election, columns = [*,Election_ID, Representative_ID, Date, Votes, Vote_Percent, Seats, Place]
A: Let's think step by step. 
The question asks 'a bar chart', so we need to 'Visualize BAR'
The question asks 'List the dates and vote percents of elections', so we need the column election.Date, election.Vote_Percent
The question asks 'List the dates and vote percents of elections', so we need to 'SELECT Date , Vote_Percent FROM election'
To this end, the targe DV query should be 'Visualize BAR SELECT Date , Vote_Percent FROM election'
Label: Visualize BAR SELECT Date , Vote_Percent FROM election

Question: You can return a bar chart to show the employees' first name and the corresponding department's id .
Database schema: Table departments, columns = [*,DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID]
Table employees, columns = [*,EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID]
Table job_history, columns = [*,EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID]
A: Let's think step by step. 
The question asks 'You can return a bar chart', so we need to 'Visualize BAR'
The question asks "show the employees' first name and the corresponding department's id", so we need the column employees.FIRST_NAME, employees.DEPARTMENT_ID
The question asks "show the employees' first name and the corresponding department's id", so we need to 'SELECT FIRST_NAME , DEPARTMENT_ID FROM employees'
To this end, the targe DV query should be 'Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees'
Label: Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees

Question: Scatter plot to show school id on x axis and acc_percent on y axis .
Database schema: Table basketball_match, columns = [*,Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral]
Table university, columns = [*,School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference]
A: Let's think step by step. 
The question asks 'Scatter plot to show', so we need to 'Visualize Scatter'
The question asks "show school id on x axis and acc_percent on y axis", so we need the column university.School_ID, university.acc_percent
The question asks "show school id on x axis and acc_percent on y axis", so we need to 'SELECT School_ID , ACC_Percent FROM basketball_match'
To this end, the targe DV query should be 'Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match'
Label: Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match

'''


prompt_GROUP_VQL = '''
Question: Plot the average of age by grouped by home city as a bar graph , could you sort by the bar from high to low ?
Database schema: Table driver, columns = [*,Driver_ID, Name, Party, Home_city, Age]
A: Let's think step by step. 
The question asks 'a bar graph', so we need to 'Visualize BAR'
The question asks 'Plot the average of age by grouped by home city', so we need the column driver.Age, driver.Age
The question asks 'Plot the average of age by grouped by home city', so we need to 'SELECT Home_city , AVG(Age) FROM driver'
The question asks 'Plot the average of age by grouped by home city', so we need data transformation 'GROUP BY Home_city'
The question asks 'sort by the bar from high to low', so we need data transformation 'ORDER BY Home_city DESC'
To this end, the targe DV query should be 'Visualize BAR SELECT Home_city , AVG(Age) FROM driver GROUP BY Home_city ORDER BY Home_city DESC'
Label: Visualize BAR SELECT Home_city , AVG(Age) FROM driver GROUP BY Home_city ORDER BY Home_city DESC

Question: Show the relation between team id and school_id for each All_Road using a scatter chart
Database schema: Table basketball_match, columns = [*,Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral]
Table university, columns = [*,School_ID, School, Location, Founded, Affiliation, Enrollment, Nickname, Primary_conference]
A: Let's think step by step. 
The question asks 'using a scatter chart', so we need to 'Visualize SCATTER'
The question asks 'the relation between team id and school_id for each All_Road', so we need the column university.School_ID, basketball_match.Team_ID, basketball_match.ACC_Road
The question asks 'the relation between team id and school_id for each All_Road', so we need to 'SELECT Team_ID , School_ID FROM basketball_match'
The question asks 'for each All_Road', so we need data transformation ' GROUP BY All_Road'
To this end, the targe DV query should be 'Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY All_Road'
Label: Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY All_Road

Question: Give me the comparison about the sum of Height over the Sex , and group by attribute Sex by a bar chart , and could you rank X from high to low order ?
Database schema: Table people, columns = [*,People_ID, Sex, Name, Date_of_Birth, Height, Weight]
A: Let's think step by step. 
The question asks 'a bar chart', so we need to 'Visualize BAR'
The question asks 'comparison about the sum of Height over the Sex', so we need the column people.Sex, people.Height
The question asks 'comparison about the sum of Height over the Sex', so we need to 'SELECT Sex , SUM(Height) FROM people'
The question asks ' group by attribute Sex by a bar chart', so we need data transformation ' GROUP BY Sex'
To this end, the targe DV query should be 'Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex ORDER BY Sex DESC'
Label: Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex ORDER BY Sex DESC

Question: Plot mean age by grouped by sex as a bar graph
Database schema: Table Student, columns = [*,StuID, LName, Fname, Age, Sex, Major, Advisor, city_code]
A: Let's think step by step. 
The question asks 'a bar chart', so we need to 'Visualize BAR'
The question asks 'Plot mean age by grouped by sex', so we need the column Student.Age, Student.Sex
The question asks 'Plot mean age', so we need to 'SELECT Sex , avg(age)'
The question asks 'grouped by sex', so we need data transformation 'GROUP BY sex'
To this end, the targe DV query should be 'Visualize BAR SELECT Sex , avg(age) FROM student GROUP BY sex'
Label: Visualize BAR SELECT Sex , avg(age) FROM student GROUP BY sex

Question: Show how many rank from each rank , and rank by the total number from low to high .
Database schema: Table Faculty, columns = [*,FacID, Lname, Fname, Rank, Sex, Phone, Room, Building]
A: Let's think step by step. 
The question asks 'a bar chart', so we need to 'Visualize BAR'
The question asks 'Show how many rank from each rank', so we need the column Faculty.Rank
The question asks 'Show how many rank from e ach rank , and rank by the total number', so we need the column Faculty.Rank
The question asks 'from each rank', so we need the data transformation 'GROUP BY Rank'
The question asks 'rank by the total number from low to high', so we need data transformation 'ORDER BY COUNT(Rank) ASC'
To this end, the targe DV query should be 'Visualize BAR SELECT Rank , COUNT(Rank) FROM Faculty GROUP BY Rank ORDER BY COUNT(Rank) ASC'
Label: Visualize BAR SELECT Rank , COUNT(Rank) FROM Faculty GROUP BY Rank ORDER BY COUNT(Rank) ASC
'''

prompt_ORDER_VQL = '''
Question: Display a bar chart for how many orchestras does each record company manage ? , display by the Y in ascending .
Database schema: Table orchestra, columns = [*,Orchestra_ID, Orchestra, Conductor_ID, Record_Company, Year_of_Founded, Major_Record_Format]
A: Let's think step by step. 
The question asks 'Display a bar chart', so we need to 'Visualize BAR'
The question asks 'how many orchestras does each record company manage', so we need the column orchestra.Record_Company
The question asks 'how many orchestras does each record company manage', so we need to 'SELECT Record_Company , COUNT(*) FROM orchestra'
The question asks 'how many orchestras does each record company manage', so we need the data transformation 'GROUP BY Record_Company'
The question asks 'display by the Y in ascending .', so we need to 'ORDER BY COUNT(*) ASC'
To this end, the targe DV query should be 'Visualize BAR SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) ASC'
Label: Visualize BAR SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) ASC

Question: Show the number of documents in different starting date and group by starting date with a line chart , list by the X in descending .
Database schema: Table Document_Locations, columns = [*,Document_ID, Location_Code, Date_in_Location_From, Date_in_Locaton_To]
A: Let's think step by step. 
The question asks 'with a line chart', so we need to 'Visualize LINE'
The question asks 'Show the number of documents in different starting date', so we need the column Document_Locations.Date_in_Location_From
The question asks 'Show the number of documents in different starting date', so we need to 'SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations'
The question asks 'group by starting date', so we need the data transformation 'GROUP BY Date_in_Location_From'
The question asks 'list by the X in descending .', so we need the data transformation 'ORDER BY Date_in_Location_From DESC'
To this end, the targe DV query should be 'Visualize LINE SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations GROUP BY Date_in_Location_From ORDER BY Date_in_Location_From DESC'
Label: Visualize LINE SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations GROUP BY Date_in_Location_From ORDER BY Date_in_Location_From DESC

Question: Find ACC_Regular_Season and All_Games_Percent , and visualize them by a bar chart , I want to show X in desc order .
Database schema: Table basketball_match, columns = [*,Team_ID, School_ID, Team_Name, ACC_Regular_Season, ACC_Percent, ACC_Home, ACC_Road, All_Games, All_Games_Percent, All_Home, All_Road, All_Neutral]
A: Let's think step by step. 
The question asks 'visualize them by a bar chart', so we need to 'Visualize BAR'
The question asks 'Find ACC_Regular_Season and All_Games_Percent ', so we need the column basketball_match.ACC_Regular_Season, basketball_match.All_Games_Percent
The question asks 'Find ACC_Regular_Season and All_Games_Percent', so we need to 'SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match'
The question asks 'I want to show X in desc order', so we need the data transformation 'ORDER BY ACC_Regular_Season DESC'
To this end, the targe DV query should be 'Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY ACC_Regular_Season DESC'
Label: Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY ACC_Regular_Season DESC

Question: A bar chart shows the distribution of Date_of_Birth and Height , and order X-axis from low to high order please .
Database schema: Table people, columns = [*,People_ID, Sex, Name, Date_of_Birth, Height, Weight]
A: Let's think step by step. 
The question asks 'A bar chart', so we need to 'Visualize BAR'
The question asks 'shows the distribution of Date_of_Birth and Height', so we need the column people.Date_of_Birth, people.Height
The question asks 'shows the distribution of Date_of_Birth and Height', so we need to 'SELECT Date_of_Birth , Height FROM people'
The question asks 'order X-axis from low to high order please', so we need to 'ORDER BY Date_of_Birth ASC'
To this end, the targe DV query should be 'Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Date_of_Birth ASC'
Label: Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Date_of_Birth ASC

Question: Visualize a bar chart for what is the age and hometown of every teacher ? , and I want to display by the y axis in ascending .
Database schema: Table teacher, columns = [*,Teacher_ID, Name, Age, Hometown]
A: Let's think step by step. 
The question asks 'Visualize a bar', so we need to 'Visualize BAR'
The question asks 'what is the age and hometown of every teacher', so we need the column teacher.Age, teacher.Hometown
The question asks 'what is the age and hometown of every teacher', so we need to 'SELECT Hometown , Age FROM teacher'
The question asks 'I want to display by the y axis in ascending .', so we need to 'ORDER BY Age ASC'
To this end, the targe DV query should be 'Visualize BAR SELECT Hometown , Age FROM teacher ORDER BY Age ASC'
Label: Visualize BAR SELECT Hometown , Age FROM teacher ORDER BY Age ASC
'''
prompt_WHERE_VQL = '''
Question: For those products with a price between 60 and 120 , visualize a bar chart about the distribution of name and manufacturer .
Database schema: Table Manufacturers, columns = [*,Code, Name, Headquarter, Founder, Revenue]
Table Products, columns = [*,Code, Name, Price, Manufacturer]
A: Let's think step by step. 
The question asks 'Visualize a bar', so we need to 'Visualize BAR'
The question asks 'what is the age and hometown of every teacher', so we need the column teacher.Age, teacher.Hometown
To this end, the targe DV query should be 'Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120'
Label: Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120

Question: How many rooms cost more than 120 , for each different decor Plot them as bar chart , and list by the Y from low to high .
Database schema: Table Rooms, columns = [*,RoomId, roomName, beds, bedType, maxOccupancy, basePrice, decor]
A: Let's think step by step. 
The question asks 'Plot them as bar chart', so we need to 'Visualize BAR'
The question asks 'How many rooms cost more than 120', so we need the column Rooms.basePrice
The question asks 'How many rooms cost more than 120', so we need to 'SELECT decor , count(*) FROM Rooms'
The question asks 'How many rooms cost more than 120', so we need the data transformation 'WHERE basePrice > 120'
The question asks 'list by the Y from low to high', so we need the data transformation ' ORDER BY count(*) ASC'
To this end, the targe DV query should be 'Visualize BAR SELECT decor , count(*) FROM Rooms WHERE basePrice > 120 GROUP BY decor ORDER BY count(*) ASC'
Label: Visualize BAR SELECT decor , count(*) FROM Rooms WHERE basePrice > 120 GROUP BY decor ORDER BY count(*) ASC

Question: Visualize a bar chart for what is the id and weight of every pet who is older than 1 ? , and I want to list in desc by the X .
Database schema: Table Has_Pet, columns = [*,StuID, PetID]
Table Pets, columns = [*,PetID, PetType, pet_age, weight]
A: Let's think step by step. 
The question asks 'Visualize a bar char', so we need to 'Visualize BAR'
The question asks 'what is the id and weight of every pet who is older than 1', so we need the column Pets.PetID, Pets.pet_age, Pets.weight
The question asks 'what is the id and weight of every pet who is older than 1', so we need to 'SELECT PetID , weight FROM pets'
The question asks 'who is older than 1', so we need to the data transformation 'WHERE pet_age > 1'
The question asks 'list by the Y from low to high', so we need the data transformation 'ORDER BY PetID DESC'
To this end, the targe DV query should be 'Visualize BAR SELECT PetID , weight FROM pets WHERE pet_age > 1 ORDER BY PetID DESC'
Label: Visualize BAR SELECT PetID , weight FROM pets WHERE pet_age > 1 ORDER BY PetID DESC

Question: What are the names of products with price at most 200 , and count them by a bar chart
Database schema: Table Manufacturers, columns = [*,Code, Name, Headquarter, Founder, Revenue]
Table Products, columns = [*,Code, Name, Price, Manufacturer]
A: Let's think step by step. 
The question asks 'a bar chart', so we need to 'Visualize BAR'
The question asks 'What are the names of products with price at most 200', so we need the column Products.Name, Products.Price
The question asks 'What are the names of products with price at most 200', so we need to 'SELECT Name , COUNT(Name) FROM products'
The question asks 'What are the names of products with price at most 200', so we need the data transformation 'WHERE price <= 200'
To this end, the targe DV query should be 'Visualize BAR SELECT Name , COUNT(Name) FROM products WHERE price <= 200'
Label: Visualize BAR SELECT Name , COUNT(Name) FROM products WHERE price <= 200

Question: Return a pie on what is the average age for a male in each job ?
Database schema: Table Person, columns = [*,name, age, city, gender, job]
A: Let's think step by step. 
The question asks 'Return a pie', so we need to 'Visualize PIE'
The question asks 'what is the average age for a male in each job', so we need the column Person.age, Person.gender, Person.job
The question asks 'what is the average age for a male in each job', so we need to 'SELECT job , avg(age) FROM Person'
The question asks 'a male in each job', so we need the data transformation 'GROUP BY job'
The question asks 'What are the names of products with price at most 200', so we need the data transformation 'WHERE gender = 'male'
To this end, the targe DV query should be 'Visualize PIE SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job'
Label: Visualize PIE SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job
'''

def ask_chat(model, messages: list, temperature, n):
    openai.api_key = 'sk-9lHPatPrSuvcde8l4bD48c0eAdF5456a8e296c15626cFa11'
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

def deal_nl(s):
    s = s.replace("\"", "")
    s = s.replace("\'", "")
    return s

def prediction_labels(path):
    all_lines = []
    with open(path, 'r') as file:
        for line in file:
            all_lines.append(line)
    all_lines_content = ' '.join(all_lines)
    all_lines_content_list = all_lines_content.strip().split('*' * 100)
    print(len(all_lines_content_list))
    all_lines_content_cases = all_lines_content_list[:-1]

    labels = []
    for case in all_lines_content_cases:
        case_lines = case.strip().split('\n')
        labels.append(case_lines[-1])
    print(len(labels))
    predicted_labels = []
    for label in labels:
        deal_label = deal_nl(label)
        print(deal_label)
        predicted_labels.append(deal_label)
    return predicted_labels


if __name__ == '__main__':
    path = '0/data.transformation.type.txt'
    predicted_labels = prediction_labels(path)

    prompt_BIN_VQL
    prompt_EASY_VQL
    prompt_GROUP_VQL
    prompt_ORDER_VQL
    prompt_WHERE_VQL

    all_test_data = json.load(open('0/test_sql_spider_style_choose_schema_rat_link.json','r'))
    all_questions = []
    for data in all_test_data:
        print(data)
        question = data['nl_queries']
        all_questions.append(question.strip())

    model = "gpt-3.5-turbo"
    n = 1

    i = 0


    start_index = 0
    end_index = 10000
    if start_index == 0:
        mode = "w"
    else:
        mode = "a"

    assert len(all_questions) == len(predicted_labels)
    # with open('0/vql.prediction', mode) as file:
    #
    #     for i, (predict_label,line) in enumerate(predicted_labels,all_questions):
    #         print(i)
    #         if i < start_index:
    #             continue
    #         if i >= end_index:
    #             break
    #         try:
    #
    #             instruction = prompt_thought_v2 + '\n' + 'Question: ' + line + '\n'
    #             # print(instruction)
    #             # exit(0)
    #             res = ask_llm(model, instruction, 0, n)
    #             print(res)
    #             # exit(0)
    #         except openai.error.InvalidRequestError:
    #             print(f"The {i}-th question has too much tokens! Return \"SELECT\" instead")
    #             res = ""
    #         if n == 1:
    #             for res in res["response"]:
    #                 file.write('Question: ' + line.strip() + '\n')
    #                 file.write(res + '\n')
    #                 file.write('*'*100 + '\n')








