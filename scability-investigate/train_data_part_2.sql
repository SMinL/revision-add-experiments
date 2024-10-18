Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY COUNT(Minister) ASC
Visualize BAR SELECT Publisher , COUNT(*) FROM publication GROUP BY Publisher ORDER BY COUNT(*) ASC
Visualize BAR SELECT gender , count(*) FROM dorm GROUP BY gender ORDER BY gender DESC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize BAR SELECT name , meter_100 FROM swimmer
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT bedType , count(*) FROM Rooms GROUP BY bedType
Visualize BAR SELECT Party , COUNT(*) FROM people GROUP BY Party
Visualize LINE SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations BIN Date_in_Location_From BY YEAR
Visualize LINE SELECT date_from , COUNT(date_from) FROM Project_Staff ORDER BY date_from ASC BIN date_from BY YEAR
Visualize LINE SELECT Year , avg(Weight) FROM CARS_DATA GROUP BY YEAR ORDER BY Year DESC
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex ORDER BY AVG(Weight) ASC
Visualize BAR SELECT Sex , SUM(Weight) FROM people GROUP BY Sex ORDER BY Sex DESC
Visualize BAR SELECT Pixel_aspect_ratio_PAR , COUNT(Pixel_aspect_ratio_PAR) FROM tv_channel WHERE LANGUAGE != 'English' GROUP BY Pixel_aspect_ratio_PAR ORDER BY Pixel_aspect_ratio_PAR DESC
Visualize SCATTER SELECT product_id , count(DISTINCT order_id) FROM Order_items
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION ORDER BY Position DESC
Visualize BAR SELECT Document_Name , COUNT(Document_Name) FROM Documents GROUP BY Document_Name ORDER BY Document_Name DESC
Visualize SCATTER SELECT Snatch , Clean_Jerk FROM body_builder
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time DESC
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Away_team ,  Season ORDER BY Season DESC
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT date_of_latest_logon , COUNT(date_of_latest_logon) FROM Students WHERE family_name = "Jaskolski" OR family_name = "Langosh"  ORDER BY COUNT(date_of_latest_logon) ASC BIN date_of_latest_logon BY WEEKDAY
Visualize LINE SELECT booking_end_date , COUNT(booking_end_date) FROM Apartment_Bookings GROUP BY booking_end_date
Visualize BAR SELECT Sex , min(weight) FROM people GROUP BY Sex
Visualize BAR SELECT DISTINCT state , COUNT(state) FROM votes GROUP BY state
Visualize BAR SELECT ACC_Regular_Season , School_ID FROM basketball_match ORDER BY ACC_Regular_Season DESC
Visualize BAR SELECT Location , AVG(Number_of_Platforms) FROM station GROUP BY Location ORDER BY AVG(Number_of_Platforms) DESC
Visualize BAR SELECT meter_200 , COUNT(meter_200) FROM swimmer GROUP BY meter_200 ORDER BY COUNT(meter_200) DESC
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality
Visualize BAR SELECT job , avg(age) FROM Person GROUP BY job ORDER BY avg(age) ASC
Visualize BAR SELECT meter_700 , meter_100 FROM swimmer
Visualize BAR SELECT Date , Vote_Percent FROM election ORDER BY Vote_Percent DESC
Visualize BAR SELECT installation_date , COUNT(installation_date) FROM station  ORDER BY COUNT(installation_date) DESC BIN installation_date BY WEEKDAY
Visualize BAR SELECT Class , COUNT(Class) FROM captain GROUP BY Class ORDER BY Class ASC
Visualize BAR SELECT Name , SUM(Price) FROM products GROUP BY Name ORDER BY Name ASC
Visualize BAR SELECT Nationality , AVG(ID) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY CRS_CODE ASC
Visualize SCATTER SELECT investor_id , COUNT(*) FROM TRANSACTIONS WHERE transaction_type_code = "SALE" GROUP BY investor_id
Visualize BAR SELECT Name , Total_Passengers FROM station WHERE LOCATION != 'London'
Visualize BAR SELECT Country , COUNT(Country) FROM singer GROUP BY Country ORDER BY COUNT(Country) DESC
Visualize BAR SELECT All_Road , Team_ID FROM basketball_match ORDER BY Team_ID DESC
Visualize BAR SELECT Winery , COUNT(Winery) FROM WINE WHERE Price > 100 GROUP BY Grape ,  Winery ORDER BY COUNT(Winery) ASC
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY School_ID DESC
Visualize BAR SELECT Sex , avg(age) FROM student GROUP BY sex ORDER BY avg(age) DESC
Visualize PIE SELECT Location , sum(total_passengers) FROM station GROUP BY LOCATION
Visualize LINE SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations GROUP BY Date_in_Locaton_To ORDER BY Date_in_Locaton_To DESC
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT Sex , AVG(Height) FROM people GROUP BY Sex ORDER BY AVG(Height) ASC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Name , Price FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Price DESC
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY How_to_Get_There DESC
Visualize BAR SELECT Owner , sum(Rating_in_percent) FROM channel GROUP BY OWNER ORDER BY sum(Rating_in_percent) ASC
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(EMPLOYEE_ID) ASC
Visualize BAR SELECT ACC_Road , SUM(School_ID) FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(EMPLOYEE_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Fname , COUNT(Fname) FROM Student WHERE Age > 18 AND Major != 600 AND Sex = 'F' GROUP BY Fname ORDER BY COUNT(Fname) DESC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize SCATTER SELECT People_ID , Clean_Jerk FROM body_builder
Visualize BAR SELECT Nationality , AVG(Age) FROM journalist GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT Openning_year , AVG(Capacity) FROM cinema GROUP BY Openning_year ORDER BY AVG(Capacity) ASC
Visualize BAR SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY CRS_CODE DESC
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY Time DESC
Visualize PIE SELECT job , min(age) FROM Person GROUP BY job
Visualize BAR SELECT Name , COUNT(Name) FROM editor GROUP BY Name ORDER BY Name DESC
Visualize BAR SELECT ACC_Road , AVG(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 BIN date BY YEAR
Visualize BAR SELECT Pixel_aspect_ratio_PAR , COUNT(Pixel_aspect_ratio_PAR) FROM tv_channel WHERE LANGUAGE != 'English' GROUP BY Pixel_aspect_ratio_PAR ORDER BY COUNT(Pixel_aspect_ratio_PAR) DESC
Visualize BAR SELECT start_station_name , start_station_id FROM trip ORDER BY start_station_id DESC
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring  ORDER BY AVG(Employee_ID) ASC BIN Start_from BY WEEKDAY
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY All_Games
Visualize BAR SELECT name , distance FROM Aircraft
Visualize PIE SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road
Visualize SCATTER SELECT investor_id , avg(share_count) FROM TRANSACTIONS GROUP BY investor_id ORDER BY avg(share_count)
Visualize BAR SELECT Headquarters , count(*) FROM company GROUP BY headquarters ORDER BY Headquarters DESC
Visualize BAR SELECT All_Road , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees ORDER BY FIRST_NAME ASC
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time DESC
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match GROUP BY ACC_Regular_Season
Visualize BAR SELECT SCHOOL_CODE , count(DISTINCT dept_address) FROM department ORDER BY count(DISTINCT dept_address) ASC
Visualize BAR SELECT meter_600 , ID FROM swimmer ORDER BY meter_600 DESC
Visualize BAR SELECT gender , sum(student_capacity) FROM dorm GROUP BY gender ORDER BY gender DESC
Visualize BAR SELECT Sex , SUM(Weight) FROM people GROUP BY Sex ORDER BY Sex DESC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 GROUP BY date ORDER BY date ASC
Visualize BAR SELECT Name , Code FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Name DESC
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY City ASC
Visualize BAR SELECT date_departed , COUNT(date_departed) FROM Dogs GROUP BY date_departed ORDER BY date_departed DESC
Visualize LINE SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass" BIN date_test_taken BY DAY
Visualize BAR SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_code
Visualize BAR SELECT Start_from , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY SUM(Shop_ID) DESC BIN Start_from BY WEEKDAY
Visualize LINE SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time BIN Start_from BY YEAR
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex ORDER BY AVG(Weight) ASC
Visualize BAR SELECT Directed_by , COUNT(Directed_by) FROM film GROUP BY Directed_by ORDER BY Directed_by ASC
Visualize BAR SELECT All_Games , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent DESC
Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees
Visualize BAR SELECT booking_end_date , COUNT(booking_end_date) FROM Apartment_Bookings BIN booking_end_date BY YEAR
Visualize BAR SELECT Year , COUNT(Year) FROM WINE WHERE Price > 100 GROUP BY Year ORDER BY YEAR
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize PIE SELECT Building , count(*) FROM Faculty GROUP BY building
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE ASC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT meter_500 , ID FROM swimmer ORDER BY meter_500 DESC
Visualize BAR SELECT destination , COUNT(destination) FROM Flight GROUP BY destination ORDER BY destination ASC
Visualize BAR SELECT booking_start_date , COUNT(booking_start_date) FROM Apartment_Bookings BIN booking_start_date BY WEEKDAY
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(DEPARTMENT_ID) DESC
Visualize BAR SELECT PetType , max(weight) FROM pets GROUP BY PetType ORDER BY PetType DESC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(EMPLOYEE_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Year , COUNT(Year) FROM book_club  ORDER BY YEAR DESC BIN Year BY YEAR
Visualize BAR SELECT EMAIL , EMPLOYEE_ID FROM employees ORDER BY EMPLOYEE_ID ASC
Visualize BAR SELECT Name , Capacity FROM cinema
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(EMPLOYEE_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY COUNT(Sex) DESC
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY All_Road
Visualize BAR SELECT date_of_enrolment , COUNT(date_of_enrolment) FROM Student_Course_Enrolment BIN date_of_enrolment BY WEEKDAY
Visualize BAR SELECT Rank , count(*) FROM Faculty GROUP BY rank ORDER BY count(*) DESC
Visualize LINE SELECT Year , max(Price) FROM WINE GROUP BY Year ORDER BY Year ASC
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY ACC_Road
Visualize SCATTER SELECT Instructor , DNO FROM COURSE ORDER BY Credits
Visualize SCATTER SELECT People_ID , Weight FROM people
Visualize BAR SELECT Start_from , SUM(Shop_ID) FROM hiring BIN Start_from BY WEEKDAY
Visualize BAR SELECT DEPT_CODE , sum(crs_credit) FROM course GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize PIE SELECT Location_Code , count(*) FROM Document_locations GROUP BY location_code
Visualize BAR SELECT Name , Height FROM people ORDER BY Name ASC
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring BIN Start_from BY YEAR
Visualize LINE SELECT date_from , COUNT(date_from) FROM Project_Staff BIN date_from BY YEAR
Visualize SCATTER SELECT sum(number_of_platforms) , sum(total_passengers) FROM station GROUP BY LOCATION
Visualize LINE SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations GROUP BY Location_Code ,  Date_in_Locaton_To ORDER BY Date_in_Locaton_To DESC
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There
Visualize LINE SELECT Openning_year , SUM(Capacity) FROM cinema  ORDER BY Openning_year ASC BIN Openning_year BY YEAR
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY All_Road
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY SUM(ID) ASC
Visualize BAR SELECT Rank , COUNT(Rank) FROM captain GROUP BY Rank ORDER BY COUNT(Rank) DESC
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE ASC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY MONTH
Visualize PIE SELECT Team , COUNT(*) FROM technician GROUP BY Team
Visualize BAR SELECT meter_200 , COUNT(meter_200) FROM swimmer GROUP BY meter_200
Visualize BAR SELECT transaction_type_code , avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY transaction_type_code ASC
Visualize PIE SELECT bedType , count(*) FROM Rooms GROUP BY bedType
Visualize BAR SELECT Type , count(*) FROM store GROUP BY TYPE ORDER BY count(*) ASC
Visualize BAR SELECT PetType , avg(weight) FROM pets GROUP BY pettype ORDER BY avg(weight) ASC
Visualize BAR SELECT date_departed , COUNT(date_departed) FROM Dogs  ORDER BY COUNT(date_departed) ASC BIN date_departed BY WEEKDAY
Visualize BAR SELECT Language , count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY count(*) DESC
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Nationality ,  Type ORDER BY Type ASC
Visualize BAR SELECT Directed_by , count(*) FROM film GROUP BY directed_by ORDER BY Directed_by ASC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(SALARY) ASC
Visualize BAR SELECT Name , Age FROM driver
Visualize BAR SELECT Owner , sum(Rating_in_percent) FROM channel GROUP BY OWNER ORDER BY sum(Rating_in_percent) ASC
Visualize BAR SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_code ORDER BY count(*) ASC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(DEPARTMENT_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize PIE SELECT City , COUNT(City) FROM branch GROUP BY City
Visualize BAR SELECT Year , COUNT(Year) FROM WINE  ORDER BY COUNT(Year) DESC BIN Year BY WEEKDAY
Visualize BAR SELECT Name , Age FROM editor
Visualize BAR SELECT name , ID FROM swimmer ORDER BY ID ASC
Visualize BAR SELECT Team , COUNT(Team) FROM elimination GROUP BY Team ORDER BY COUNT(Team) DESC
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Season
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There
Visualize BAR SELECT meter_700 , ID FROM swimmer ORDER BY meter_700 DESC
Visualize BAR SELECT origin , count(*) FROM Flight GROUP BY origin ORDER BY count(*) DESC
Visualize BAR SELECT Location_Code , COUNT(Location_Code) FROM Document_locations GROUP BY Location_Code ORDER BY Location_Code DESC
Visualize PIE SELECT Carrier , SUM(Memory_in_G) FROM phone GROUP BY Carrier
Visualize BAR SELECT Is_full_time , COUNT(Is_full_time) FROM hiring GROUP BY Is_full_time ORDER BY COUNT(Is_full_time) DESC
Visualize BAR SELECT Flag , count(*) FROM ship GROUP BY flag ORDER BY Flag DESC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT PetType , max(pet_age) FROM pets GROUP BY PetType
Visualize BAR SELECT All_Neutral , Team_ID FROM basketball_match ORDER BY All_Neutral ASC
Visualize BAR SELECT DEPT_CODE , sum(stu_hrs) FROM student GROUP BY dept_code ORDER BY sum(stu_hrs) DESC
Visualize BAR SELECT Carrier , AVG(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY AVG(Memory_in_G) DESC
Visualize BAR SELECT Name , COUNT(Name) FROM Products GROUP BY Name ORDER BY COUNT(Name) ASC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 BIN date BY WEEKDAY
Visualize BAR SELECT Name , COUNT(Name) FROM products WHERE price <= 200 GROUP BY Name ORDER BY Name DESC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring BIN Start_from BY WEEKDAY
Visualize BAR SELECT All_Road , ACC_Percent FROM basketball_match
Visualize BAR SELECT Country , count(*) FROM singer GROUP BY country ORDER BY Country ASC
Visualize BAR SELECT Carrier , AVG(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY Carrier DESC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(EMPLOYEE_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass" GROUP BY date_test_taken ORDER BY date_test_taken ASC
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(EMPLOYEE_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Duration , COUNT(Duration) FROM actor GROUP BY Duration ORDER BY COUNT(Duration) ASC
Visualize BAR SELECT Type , COUNT(*) FROM artwork GROUP BY TYPE ORDER BY Type ASC
Visualize BAR SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time ORDER BY COUNT(Start_from) ASC BIN Start_from BY WEEKDAY
Visualize BAR SELECT PetType , max(weight) FROM pets GROUP BY PetType
Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match GROUP BY ACC_Regular_Season
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(MANAGER_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Location_Code , COUNT(Location_Code) FROM Document_locations GROUP BY Location_Code ORDER BY COUNT(Location_Code) ASC
Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex ORDER BY Sex ASC
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE ASC
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM ship GROUP BY Type ,  Nationality
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations GROUP BY Location_Code BIN Date_in_Locaton_To BY WEEKDAY
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Home_team ORDER BY Season DESC BIN Season BY YEAR
Visualize LINE SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations GROUP BY Date_in_Locaton_To
Visualize BAR SELECT Team_Name , School_ID FROM basketball_match ORDER BY School_ID ASC
Visualize LINE SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time BIN Start_from BY YEAR
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM ship GROUP BY Nationality
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT apt_type_code , min(room_count) FROM Apartments GROUP BY apt_type_code ORDER BY min(room_count) DESC
Visualize BAR SELECT SCHOOL_CODE , count(DISTINCT dept_name) FROM department
Visualize BAR SELECT Start_from , COUNT(Start_from) FROM hiring  ORDER BY COUNT(Start_from) ASC BIN Start_from BY WEEKDAY
Visualize PIE SELECT payment_method_code , COUNT(payment_method_code) FROM customers GROUP BY payment_method_code
Visualize BAR SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass" BIN date_test_taken BY WEEKDAY
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY All_Home ASC
Visualize BAR SELECT ACC_Road , AVG(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY AVG(Team_ID) ASC
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY ACC_Home
Visualize PIE SELECT All_Neutral , Team_ID FROM basketball_match
Visualize LINE SELECT year , avg(attendance) FROM home_game GROUP BY YEAR ORDER BY year DESC
Visualize BAR SELECT Name , Age FROM editor ORDER BY Age ASC
Visualize BAR SELECT COUNTRY_NAME , COUNT(COUNTRY_NAME) FROM countries GROUP BY COUNTRY_NAME ORDER BY COUNTRY_NAME ASC
Visualize BAR SELECT password , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(DEPARTMENT_ID) ASC
Visualize BAR SELECT Name , Number_Deaths FROM storm WHERE number_deaths >= 1 ORDER BY Number_Deaths ASC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT meter_200 , AVG(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 ASC
Visualize LINE SELECT Start_from , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize PIE SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120
Visualize SCATTER SELECT Body_Builder_ID , Snatch FROM body_builder
Visualize BAR SELECT Name , Code FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Code ASC
Visualize BAR SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category ORDER BY Category ASC
Visualize BAR SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality ORDER BY SUM(Age) ASC
Visualize BAR SELECT Name , Capacity FROM cinema ORDER BY Capacity DESC
Visualize BAR SELECT Location , sum(total_passengers) FROM station GROUP BY LOCATION
Visualize BAR SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_state ORDER BY billing_state DESC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(DEPARTMENT_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT Type , sum(enrollment) FROM institution GROUP BY TYPE ORDER BY sum(enrollment) DESC
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION ORDER BY count(*) DESC
Visualize BAR SELECT Open_Date , COUNT(Open_Date) FROM church GROUP BY Open_Date ORDER BY open_date DESC LIMIT 3
Visualize SCATTER SELECT Final_Table_Made , Best_Finish FROM poker_player
Visualize BAR SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY ACC_Regular_Season
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Nationality ,  Type ORDER BY Type DESC
Visualize BAR SELECT DEPT_CODE , max(stu_gpa) FROM student GROUP BY DEPT_CODE ORDER BY DEPT_CODE DESC
Visualize BAR SELECT Left_office , COUNT(Left_office) FROM party GROUP BY Minister BIN Left_office BY YEAR
Visualize PIE SELECT Sex , count(*) FROM people WHERE weight > 85 GROUP BY sex
Visualize SCATTER SELECT Statement_ID , count(*) FROM Accounts GROUP BY STATEMENT_ID
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) DESC
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY How_to_Get_There DESC
Visualize BAR SELECT Nominee , COUNT(*) FROM musical GROUP BY Nominee ORDER BY Nominee ASC
Visualize BAR SELECT lot_details , COUNT(lot_details) FROM LOTS GROUP BY lot_details ORDER BY lot_details ASC
Visualize PIE SELECT gender , sum(student_capacity) FROM dorm GROUP BY gender
Visualize BAR SELECT name , distance FROM Aircraft ORDER BY name DESC
Visualize PIE SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Class , COUNT(Class) FROM captain GROUP BY Class ORDER BY Class DESC
Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees ORDER BY FIRST_NAME DESC
Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match
Visualize BAR SELECT Participant_Details , Participant_ID FROM Participants ORDER BY Participant_ID ASC
Visualize BAR SELECT decor , min(basePrice) FROM Rooms GROUP BY decor ORDER BY decor DESC
Visualize BAR SELECT gender , sum(student_capacity) FROM dorm GROUP BY gender ORDER BY sum(student_capacity) ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(EMPLOYEE_ID) DESC
Visualize BAR SELECT personal_name , author_id FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Rank , count(*) FROM Faculty GROUP BY Sex ,  Rank ORDER BY count(*) ASC
Visualize BAR SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category ORDER BY Category DESC
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer ORDER BY meter_300 DESC
Visualize BAR SELECT PetType , max(pet_age) FROM pets GROUP BY PetType ORDER BY PetType ASC
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Carrier , AVG(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY Carrier ASC
Visualize PIE SELECT All_Road , School_ID FROM basketball_match
Visualize LINE SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS WHERE share_count < 10  ORDER BY date_of_transaction ASC BIN date_of_transaction BY YEAR
Visualize BAR SELECT Name , AVG(Price) FROM products GROUP BY Name ORDER BY AVG(Price) ASC
Visualize BAR SELECT lot_details , COUNT(lot_details) FROM LOTS GROUP BY lot_details ORDER BY lot_details DESC
Visualize BAR SELECT Country , count(*) FROM singer GROUP BY country ORDER BY Country ASC
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize SCATTER SELECT author_id , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize PIE SELECT Name , Price FROM products WHERE price >= 180 ORDER BY price DESC , name ASC
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION ORDER BY count(*) DESC
Visualize SCATTER SELECT Body_Builder_ID , People_ID FROM body_builder
Visualize LINE SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations GROUP BY Location_Code ORDER BY Date_in_Location_From DESC BIN Date_in_Location_From BY YEAR
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(MANAGER_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize SCATTER SELECT People_ID , Clean_Jerk FROM body_builder
Visualize PIE SELECT All_Home , COUNT(All_Home) FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT bedType , count(*) FROM Rooms GROUP BY bedType ORDER BY bedType ASC
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC
Visualize BAR SELECT Location , AVG(Number_of_Platforms) FROM station GROUP BY Location ORDER BY AVG(Number_of_Platforms) DESC
Visualize PIE SELECT billing_country , COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5
Visualize BAR SELECT Directed_by , COUNT(Directed_by) FROM film GROUP BY Directed_by ORDER BY COUNT(Directed_by) ASC
Visualize PIE SELECT Class , COUNT(Class) FROM captain GROUP BY Class
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM residents  ORDER BY COUNT(date_moved_in) DESC BIN date_moved_in BY WEEKDAY
Visualize BAR SELECT Position , avg(Points) FROM player GROUP BY POSITION
Visualize BAR SELECT booking_end_date , COUNT(booking_end_date) FROM Apartment_Bookings  ORDER BY COUNT(booking_end_date) ASC BIN booking_end_date BY YEAR
Visualize BAR SELECT ACC_Regular_Season , ACC_Percent FROM basketball_match ORDER BY ACC_Percent ASC
Visualize BAR SELECT Type , count(*) FROM store GROUP BY TYPE
Visualize BAR SELECT Start_from , COUNT(Start_from) FROM hiring BIN Start_from BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE first_name NOT LIKE '%M%' BIN HIRE_DATE BY WEEKDAY
Visualize PIE SELECT charge_type , charge_amount FROM Charges
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(DEPARTMENT_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize PIE SELECT All_Road , All_Games_Percent FROM basketball_match
Visualize BAR SELECT Sex , count(*) FROM people WHERE weight > 85 GROUP BY sex
Visualize SCATTER SELECT order_id , count(*) FROM Invoices GROUP BY order_id
Visualize LINE SELECT Start_from , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time BIN Start_from BY YEAR
Visualize BAR SELECT Hometown , Age FROM teacher
Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match
Visualize BAR SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
Visualize PIE SELECT payment_method_code , COUNT(payment_method_code) FROM customers GROUP BY payment_method_code
Visualize LINE SELECT Season , COUNT(Season) FROM game  ORDER BY Season ASC BIN Season BY YEAR
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) ASC
Visualize BAR SELECT name , ID FROM swimmer ORDER BY name DESC
Visualize LINE SELECT Season , COUNT(Season) FROM game  ORDER BY Season ASC BIN Season BY YEAR
Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex ORDER BY Sex DESC
Visualize BAR SELECT Location , COUNT(Location) FROM performance GROUP BY Location ORDER BY Location ASC
Visualize BAR SELECT FIRST_NAME , AVG(SALARY) FROM employees WHERE first_name LIKE '%m' GROUP BY FIRST_NAME ORDER BY FIRST_NAME DESC
Visualize LINE SELECT Year , max(Score) FROM WINE GROUP BY Year ORDER BY Year ASC
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY city_code ASC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY School_ID DESC
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time
Visualize LINE SELECT receipt_date , COUNT(receipt_date) FROM Documents  ORDER BY receipt_date DESC BIN receipt_date BY YEAR
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85  ORDER BY COUNT(date) ASC BIN date BY WEEKDAY
Visualize SCATTER SELECT Body_Builder_ID , People_ID FROM body_builder
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) ASC
Visualize BAR SELECT All_Home , AVG(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home ASC
Visualize BAR SELECT meter_600 , ID FROM swimmer ORDER BY ID ASC
Visualize PIE SELECT Team , COUNT(Team) FROM elimination GROUP BY Team
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road
Visualize BAR SELECT Rank , count(*) FROM captain GROUP BY rank ORDER BY count(*) ASC
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality ORDER BY SUM(ID) DESC
Visualize BAR SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time BIN Start_from BY WEEKDAY
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY All_Road
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(MANAGER_ID) DESC BIN HIRE_DATE BY MONTH
Visualize LINE SELECT Start_from , SUM(Shop_ID) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT Date_of_Birth , Weight FROM people ORDER BY Date_of_Birth DESC
Visualize BAR SELECT meter_400 , meter_100 FROM swimmer ORDER BY meter_400 DESC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Founder , sum(revenue) FROM manufacturers GROUP BY founder ORDER BY sum(revenue) DESC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 BIN date BY YEAR
Visualize PIE SELECT Main_Industry , sum(market_value) FROM company GROUP BY main_industry
Visualize BAR SELECT Fate , COUNT(Fate) FROM mission GROUP BY Fate ORDER BY Fate ASC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT LAST_NAME , SALARY FROM employees ORDER BY LAST_NAME DESC
Visualize BAR SELECT Sex , min(weight) FROM people GROUP BY Sex ORDER BY min(weight) ASC
Visualize BAR SELECT All_Games , Team_ID FROM basketball_match ORDER BY All_Games DESC
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT yearid , COUNT(yearid) FROM hall_of_fame BIN yearid BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(EMPLOYEE_ID) ASC BIN HIRE_DATE BY MONTH
Visualize PIE SELECT Venue , COUNT(Venue) FROM debate GROUP BY Venue
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY job DESC
Visualize BAR SELECT Venue , COUNT(Venue) FROM debate GROUP BY Venue ORDER BY Venue DESC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT gender , avg(age) FROM Person GROUP BY gender ORDER BY gender ASC
Visualize BAR SELECT gender , avg(age) FROM Person GROUP BY gender
Visualize BAR SELECT ACC_Road , SUM(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home ASC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY All_Games
Visualize BAR SELECT Start_from , AVG(Shop_ID) FROM hiring  ORDER BY AVG(Shop_ID) DESC BIN Start_from BY WEEKDAY
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE ASC
Visualize SCATTER SELECT Account_ID , Account_Details FROM Accounts
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex
Visualize PIE SELECT DEPT_CODE , count(*) FROM student GROUP BY dept_code
Visualize BAR SELECT apt_type_code , COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(SALARY) ASC
Visualize BAR SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code ORDER BY COUNT(*) DESC
Visualize PIE SELECT Sex , avg(age) FROM Student GROUP BY sex
Visualize LINE SELECT Year , avg(Price) FROM WINE GROUP BY YEAR
Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Height ASC
Visualize BAR SELECT Class , COUNT(Class) FROM captain GROUP BY Rank ,  Class ORDER BY Class ASC
Visualize BAR SELECT apt_number , room_count FROM Apartments ORDER BY room_count DESC
Visualize BAR SELECT Nationality , SUM(meter_100) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT meter_200 , AVG(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 DESC
Visualize BAR SELECT Sex , count(*) FROM Faculty WHERE rank = "AsstProf" GROUP BY sex ORDER BY count(*) ASC
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY SUM(Employee_ID) DESC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT Rank , count(*) FROM captain WHERE age < 50 GROUP BY rank ORDER BY count(*) ASC
Visualize BAR SELECT Location , COUNT(Location) FROM station GROUP BY Location ORDER BY Location DESC
Visualize PIE SELECT Type , avg(Tonnage) FROM ship GROUP BY TYPE
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(DEPARTMENT_ID) ASC
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize BAR SELECT date_departed , COUNT(date_departed) FROM Dogs  ORDER BY COUNT(date_departed) ASC BIN date_departed BY WEEKDAY
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY avg(age) ASC
Visualize BAR SELECT Area , COUNT(Area) FROM APPELLATIONS GROUP BY Area ORDER BY Area DESC
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor ORDER BY decor DESC
Visualize PIE SELECT origin , COUNT(origin) FROM Flight GROUP BY origin
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY Grape ASC
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY meter_300 ASC
Visualize BAR SELECT Location , COUNT(*) FROM performance GROUP BY LOCATION ORDER BY Location DESC
Visualize BAR SELECT Team_Name , Team_ID FROM basketball_match ORDER BY Team_Name DESC
Visualize BAR SELECT Rank , COUNT(Rank) FROM Faculty GROUP BY Rank ORDER BY Rank DESC
Visualize PIE SELECT job , avg(age) FROM Person GROUP BY job
Visualize BAR SELECT start_station_name , start_station_id FROM trip ORDER BY start_station_id ASC
Visualize BAR SELECT EMAIL , EMPLOYEE_ID FROM employees ORDER BY EMAIL DESC
Visualize BAR SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC
Visualize BAR SELECT Carrier , COUNT(*) FROM phone GROUP BY Carrier ORDER BY Carrier DESC
Visualize SCATTER SELECT Height , Weight FROM people
Visualize BAR SELECT LAST_NAME , SALARY FROM employees ORDER BY LAST_NAME ASC
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road ORDER BY COUNT(ACC_Road) DESC
Visualize LINE SELECT Year , avg(Price) FROM WINE GROUP BY YEAR
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY School_ID ASC
Visualize PIE SELECT Building , count(*) FROM Faculty GROUP BY building
Visualize BAR SELECT EMAIL , SALARY FROM employees ORDER BY SALARY ASC
Visualize SCATTER SELECT Code , Price FROM products WHERE price BETWEEN 60 AND 120
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE zip_code = 94107 AND EVENTS != "Fog" AND EVENTS != "Rain" BIN date BY YEAR
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor ORDER BY count(*) ASC
Visualize BAR SELECT All_Games , Team_ID FROM basketball_match ORDER BY Team_ID ASC
Visualize BAR SELECT date , mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT Sex , avg(age) FROM Student GROUP BY sex ORDER BY avg(age) DESC
Visualize BAR SELECT All_Road , All_Games_Percent FROM basketball_match ORDER BY All_Road ASC
Visualize BAR SELECT All_Games , School_ID FROM basketball_match ORDER BY All_Games DESC
Visualize BAR SELECT Sex , count(*) FROM Faculty WHERE rank = "AsstProf" GROUP BY sex ORDER BY Sex DESC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Type , COUNT(*) FROM artwork GROUP BY TYPE ORDER BY COUNT(*) DESC
Visualize BAR SELECT All_Home , SUM(Team_ID) FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT Team , COUNT(*) FROM technician GROUP BY Team
Visualize BAR SELECT All_Neutral , All_Games_Percent FROM basketball_match
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Season ORDER BY Season ASC
Visualize BAR SELECT Is_full_time , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code
Visualize PIE SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
Visualize PIE SELECT All_Home , SUM(School_ID) FROM basketball_match GROUP BY All_Home
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT city_code , count(*) FROM student WHERE sex = 'M' GROUP BY city_code
Visualize BAR SELECT asset_make , COUNT(asset_make) FROM Assets GROUP BY asset_make
Visualize BAR SELECT name , ID FROM swimmer ORDER BY name DESC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Name , Number_Deaths FROM storm WHERE number_deaths >= 1 ORDER BY Number_Deaths DESC
Visualize SCATTER SELECT Code , min(price) FROM products GROUP BY Code
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT County_name , Population FROM county ORDER BY County_name ASC
Visualize BAR SELECT job , avg(age) FROM Person GROUP BY job ORDER BY avg(age) ASC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(DEPARTMENT_ID) ASC
Visualize SCATTER SELECT Code , Manufacturer FROM products WHERE price BETWEEN 60 AND 120
Visualize BAR SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road ORDER BY COUNT(ACC_Road) DESC
Visualize BAR SELECT date , SUM(mean_temperature_f) FROM weather  ORDER BY max_gust_speed_mph DESC LIMIT 3 BIN date BY WEEKDAY
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize BAR SELECT PetType , avg(weight) FROM pets GROUP BY pettype ORDER BY PetType ASC
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road
Visualize BAR SELECT meter_700 , meter_100 FROM swimmer ORDER BY meter_100 ASC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Name , SUM(Price) FROM products GROUP BY Name ORDER BY SUM(Price) ASC
Visualize PIE SELECT All_Road , School_ID FROM basketball_match
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees
Visualize BAR SELECT Start_from , AVG(Shop_ID) FROM hiring BIN Start_from BY WEEKDAY
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match
Visualize BAR SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC
Visualize BAR SELECT Name , COUNT(Name) FROM train GROUP BY Name ORDER BY COUNT(Name) DESC
Visualize BAR SELECT meter_200 , SUM(meter_100) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 ASC
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY COUNT(Sex) DESC
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) ASC
Visualize BAR SELECT Committee , COUNT(Committee) FROM election GROUP BY Committee ORDER BY Committee DESC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(DEPARTMENT_ID) DESC
Visualize BAR SELECT Country , COUNT(Country) FROM competition GROUP BY Competition_type ,  Country
Visualize BAR SELECT Duration , COUNT(Duration) FROM actor GROUP BY Duration ORDER BY COUNT(Duration) DESC
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor
Visualize BAR SELECT date_of_latest_logon , COUNT(date_of_latest_logon) FROM Students WHERE family_name = "Jaskolski" OR family_name = "Langosh"  ORDER BY COUNT(date_of_latest_logon) ASC BIN date_of_latest_logon BY WEEKDAY
Visualize BAR SELECT Dates_active , Number_Deaths FROM storm WHERE number_deaths >= 1 ORDER BY Dates_active DESC
Visualize SCATTER SELECT SALARY , DEPARTMENT_ID FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Name , Age FROM editor ORDER BY Name ASC
Visualize BAR SELECT Category , count(*) FROM book_club GROUP BY category ORDER BY count(*) ASC
Visualize BAR SELECT Type , avg(Tonnage) FROM ship GROUP BY TYPE ORDER BY Type ASC
Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees ORDER BY FIRST_NAME DESC
Visualize BAR SELECT Name , Floors FROM building ORDER BY floors
Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Height DESC
Visualize LINE SELECT Start_from , Employee_ID FROM hiring ORDER BY Start_from DESC
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY COUNT(Nationality) ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(EMPLOYEE_ID) DESC
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer
Visualize BAR SELECT All_Road , School_ID FROM basketball_match
Visualize BAR SELECT name , distance FROM Aircraft
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Season
Visualize PIE SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(EMPLOYEE_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT DEPT_CODE , sum(stu_hrs) FROM student GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize BAR SELECT SportName , count(*) FROM Sportsinfo GROUP BY sportname
Visualize BAR SELECT decor , avg(basePrice) FROM Rooms GROUP BY decor ORDER BY decor DESC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(DEPARTMENT_ID) DESC
Visualize BAR SELECT gender , avg(age) FROM Person GROUP BY gender ORDER BY gender DESC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(DEPARTMENT_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT DEPT_CODE , sum(stu_hrs) FROM student GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize BAR SELECT All_Games , All_Games_Percent FROM basketball_match
Visualize BAR SELECT Sex , avg(age) FROM Student GROUP BY sex ORDER BY Sex DESC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Headquarters , count(*) FROM company GROUP BY headquarters ORDER BY count(*) DESC
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Minister , COUNT(Minister) FROM party WHERE party_name != 'Progress Party' GROUP BY Minister
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality ORDER BY AVG(meter_100) ASC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(MANAGER_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize PIE SELECT DEPT_CODE , sum(crs_credit) FROM course GROUP BY dept_code
Visualize BAR SELECT DEPT_CODE , count(*) FROM student GROUP BY dept_code ORDER BY count(*) ASC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Open_Date , COUNT(Open_Date) FROM church  ORDER BY COUNT(Open_Date) ASC BIN Open_Date BY WEEKDAY
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 DESC
Visualize SCATTER SELECT Physician , Department FROM affiliated_with WHERE primaryaffiliation = 1
Visualize BAR SELECT PetType , avg(weight) FROM pets GROUP BY pettype
Visualize SCATTER SELECT order_id , count(*) FROM Order_items GROUP BY order_id
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM journalist GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent DESC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(MANAGER_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT apt_number , room_count FROM Apartments ORDER BY apt_number DESC
Visualize BAR SELECT Team_Name , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize SCATTER SELECT Team_ID , ACC_Percent FROM basketball_match GROUP BY ACC_Road
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Away_team ,  Season ORDER BY Season DESC
Visualize PIE SELECT Class , avg(age) FROM captain GROUP BY CLASS
Visualize BAR SELECT Country , COUNT(Country) FROM singer GROUP BY Country ORDER BY Country DESC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85  ORDER BY COUNT(date) ASC BIN date BY YEAR
Visualize BAR SELECT date_to , COUNT(date_to) FROM Project_Staff BIN date_to BY WEEKDAY
Visualize BAR SELECT Time_of_day , count(*) FROM broadcast GROUP BY time_of_day ORDER BY count(*) DESC
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY School_ID ASC
Visualize BAR SELECT Home_team , COUNT(Home_team) FROM game GROUP BY Away_team ,  Home_team ORDER BY COUNT(Home_team) ASC
Visualize BAR SELECT Team , COUNT(*) FROM elimination GROUP BY Team
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) DESC
Visualize BAR SELECT city , COUNT(*) FROM station GROUP BY city ORDER BY COUNT(*) DESC
Visualize BAR SELECT All_Neutral , ACC_Percent FROM basketball_match ORDER BY All_Neutral ASC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Owner , sum(Rating_in_percent) FROM channel GROUP BY OWNER ORDER BY Owner ASC
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY city_code ASC
Visualize BAR SELECT start_station_name , start_station_id FROM trip ORDER BY start_station_name DESC
Visualize LINE SELECT HIRE_DATE , COMMISSION_PCT FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT All_Games , ACC_Percent FROM basketball_match
Visualize BAR SELECT Committee , COUNT(Committee) FROM election GROUP BY Committee ORDER BY Committee DESC
Visualize BAR SELECT Calendar_Date , COUNT(Calendar_Date) FROM Ref_calendar BIN Calendar_Date BY WEEKDAY
Visualize PIE SELECT Affiliation , sum(enrollment) FROM university GROUP BY affiliation
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY job DESC
Visualize PIE SELECT Position , COUNT(Position) FROM pilot GROUP BY Position
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY Grape ASC
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Home_team , COUNT(Home_team) FROM game GROUP BY Away_team ,  Home_team
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(EMPLOYEE_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 DESC
Visualize SCATTER SELECT Price , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 GROUP BY Name
Visualize SCATTER SELECT sum(grant_amount) , organisation_id FROM Grants GROUP BY organisation_id
Visualize BAR SELECT destination , count(*) FROM Flight GROUP BY destination ORDER BY count(*) ASC
Visualize BAR SELECT All_Home , SUM(School_ID) FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home ASC
Visualize BAR SELECT Category , count(*) FROM book_club GROUP BY category ORDER BY Category DESC
Visualize BAR SELECT Calendar_Date , COUNT(Calendar_Date) FROM Ref_calendar  ORDER BY COUNT(Calendar_Date) DESC BIN Calendar_Date BY WEEKDAY
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31 GROUP BY date
Visualize BAR SELECT Rank , count(*) FROM captain WHERE age < 50 GROUP BY rank ORDER BY Rank DESC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY AVG(MANAGER_ID) DESC
Visualize BAR SELECT Class , count(*) FROM race GROUP BY CLASS ORDER BY count(*) ASC
Visualize PIE SELECT origin , COUNT(origin) FROM Flight GROUP BY origin
Visualize BAR SELECT destination , COUNT(destination) FROM Flight WHERE price > 300 GROUP BY destination ORDER BY destination ASC
Visualize BAR SELECT Result , COUNT(Result) FROM music_festival GROUP BY Result ORDER BY Result DESC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85  ORDER BY COUNT(date) DESC BIN date BY WEEKDAY
Visualize PIE SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex
Visualize BAR SELECT other_account_details , COUNT(other_account_details) FROM Accounts GROUP BY other_account_details ORDER BY other_account_details ASC
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(EMPLOYEE_ID) ASC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC
Visualize SCATTER SELECT Body_Builder_ID , People_ID FROM body_builder
Visualize SCATTER SELECT gender , count(*) FROM Customers GROUP BY gender
Visualize PIE SELECT Nominee , COUNT(Nominee) FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derricks" GROUP BY Nominee
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize LINE SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass" BIN date_test_taken BY DAY
Visualize LINE SELECT date_account_opened , COUNT(date_account_opened) FROM Accounts GROUP BY other_account_details ORDER BY date_account_opened DESC BIN date_account_opened BY YEAR
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT DEPT_CODE , avg(stu_gpa) FROM student GROUP BY dept_code ORDER BY avg(stu_gpa) DESC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31  ORDER BY COUNT(date) DESC BIN date BY YEAR
Visualize BAR SELECT ACC_Road , SUM(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY SUM(School_ID) ASC
Visualize SCATTER SELECT count(*) , sum(enrollment) FROM institution GROUP BY Type
Visualize BAR SELECT All_Games , All_Games_Percent FROM basketball_match ORDER BY All_Games DESC
Visualize BAR SELECT All_Home , AVG(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY AVG(Team_ID) ASC
Visualize LINE SELECT Year , avg(Price) FROM WINE GROUP BY YEAR
Visualize BAR SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations BIN Date_in_Location_From BY WEEKDAY
Visualize BAR SELECT password , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(DEPARTMENT_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY How_to_Get_There ASC
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY count(*) DESC
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code
Visualize BAR SELECT product_name , COUNT(product_name) FROM products GROUP BY product_name ORDER BY product_name DESC
Visualize LINE SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS WHERE share_count >= 100 OR amount_of_transaction >= 100  ORDER BY date_of_transaction DESC BIN date_of_transaction BY YEAR
Visualize BAR SELECT Studio , COUNT(*) FROM film GROUP BY Studio ORDER BY Studio DESC
Visualize BAR SELECT Location , COUNT(Location) FROM station GROUP BY Location ORDER BY COUNT(Location) DESC
Visualize BAR SELECT Rank , count(*) FROM captain GROUP BY rank
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match GROUP BY All_Games
Visualize PIE SELECT Rank , COUNT(Rank) FROM Faculty GROUP BY Rank
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Location , SUM(Number_of_Platforms) FROM station GROUP BY Location ORDER BY Location ASC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 ASC
Visualize BAR SELECT LAST_NAME , SALARY FROM employees ORDER BY SALARY ASC
Visualize PIE SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(SALARY) DESC
Visualize BAR SELECT Category , COUNT(*) FROM music_festival GROUP BY Category ORDER BY COUNT(*) DESC
Visualize BAR SELECT Country , COUNT(Country) FROM member GROUP BY Country ORDER BY Country ASC
Visualize BAR SELECT Team , COUNT(Team) FROM elimination GROUP BY Team ORDER BY Team DESC
Visualize PIE SELECT All_Games , All_Games_Percent FROM basketball_match
Visualize PIE SELECT Headquarters , count(*) FROM company GROUP BY headquarters
Visualize BAR SELECT Location , COUNT(*) FROM performance GROUP BY LOCATION
Visualize BAR SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality
Visualize LINE SELECT Year , max(Price) FROM WINE GROUP BY Year ORDER BY Year DESC
Visualize BAR SELECT ACC_Road , AVG(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT County_name , Population FROM county
Visualize BAR SELECT ACC_Road , AVG(School_ID) FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT All_Neutral , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent DESC
Visualize LINE SELECT Year , avg(Weight) FROM CARS_DATA GROUP BY YEAR ORDER BY Year ASC
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring  ORDER BY AVG(Employee_ID) DESC BIN Start_from BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(MANAGER_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize SCATTER SELECT id , duration FROM trip ORDER BY duration DESC LIMIT 3
Visualize BAR SELECT Headquarters , count(*) FROM company GROUP BY headquarters ORDER BY Headquarters ASC
Visualize LINE SELECT yearid , COUNT(yearid) FROM hall_of_fame BIN yearid BY YEAR
Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Manufacturer ASC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(MANAGER_ID) DESC
Visualize LINE SELECT date_account_opened , COUNT(date_account_opened) FROM Accounts BIN date_account_opened BY YEAR
Visualize BAR SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_state ORDER BY billing_state ASC
Visualize BAR SELECT Party , count(*) FROM driver GROUP BY party
Visualize LINE SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male"  ORDER BY date_of_birth DESC BIN date_of_birth BY YEAR
Visualize BAR SELECT meter_700 , meter_100 FROM swimmer ORDER BY meter_700 ASC
Visualize PIE SELECT Name , Level_of_membership FROM visitor WHERE Level_of_membership > 4
Visualize BAR SELECT City , COUNT(City) FROM branch GROUP BY City ORDER BY open_year
Visualize BAR SELECT name , weight FROM Dogs WHERE abandoned_yn = 1 ORDER BY name ASC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY min(age) ASC
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC
Visualize BAR SELECT Participant_Type_Code , COUNT(Participant_Type_Code) FROM Participants GROUP BY Participant_Type_Code ORDER BY COUNT(Participant_Type_Code) ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events GROUP BY date_moved_in ORDER BY COUNT(date_moved_in) DESC
Visualize BAR SELECT Nationality , AVG(ID) FROM swimmer GROUP BY Nationality ORDER BY AVG(ID) ASC
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY Time DESC
Visualize BAR SELECT Committee , COUNT(Committee) FROM election GROUP BY Committee ORDER BY COUNT(Committee) ASC
Visualize BAR SELECT Studio , COUNT(*) FROM film GROUP BY Studio ORDER BY COUNT(*) ASC
Visualize BAR SELECT start_station_name , start_station_id FROM trip ORDER BY start_station_name ASC
Visualize BAR SELECT decor , min(basePrice) FROM Rooms GROUP BY decor ORDER BY decor DESC
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT DEPT_CODE , min(stu_gpa) FROM student GROUP BY DEPT_CODE ORDER BY min(stu_gpa) DESC
Visualize BAR SELECT meter_200 , SUM(meter_100) FROM swimmer GROUP BY meter_200 ORDER BY SUM(meter_100) DESC
Visualize BAR SELECT Name , Height FROM people ORDER BY Name DESC
Visualize SCATTER SELECT Team_ID , ACC_Percent FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT SCHOOL_CODE , count(DISTINCT dept_name) FROM department ORDER BY SCHOOL_CODE DESC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Sex , SUM(Weight) FROM people GROUP BY Sex ORDER BY SUM(Weight) DESC
Visualize BAR SELECT Time , meter_100 FROM swimmer ORDER BY Time ASC
Visualize SCATTER SELECT CID , DNO FROM COURSE ORDER BY Credits
Visualize BAR SELECT year , COUNT(year) FROM home_game BIN year BY WEEKDAY
Visualize PIE SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road
Visualize PIE SELECT Party , COUNT(*) FROM representative GROUP BY Party
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT All_Neutral , School_ID FROM basketball_match ORDER BY School_ID DESC
Visualize BAR SELECT Open_Date , COUNT(Open_Date) FROM church  ORDER BY COUNT(Open_Date) DESC BIN Open_Date BY WEEKDAY
Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister
Visualize BAR SELECT meter_500 , meter_100 FROM swimmer ORDER BY meter_500 ASC
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT Nationality , AVG(ID) FROM swimmer GROUP BY Nationality
Visualize BAR SELECT date , SUM(cloud_cover) FROM weather BIN date BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(EMPLOYEE_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Start_from , SUM(Employee_ID) FROM hiring  ORDER BY SUM(Employee_ID) ASC BIN Start_from BY WEEKDAY
Visualize BAR SELECT Participant_Details , Participant_ID FROM Participants ORDER BY Participant_Details ASC
Visualize BAR SELECT meter_700 , ID FROM swimmer
Visualize BAR SELECT Location , AVG(Number_of_Platforms) FROM station GROUP BY Location ORDER BY Location ASC
Visualize BAR SELECT Sex , avg(age) FROM Student GROUP BY sex
Visualize BAR SELECT All_Home , AVG(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home DESC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(SALARY) ASC
Visualize BAR SELECT Sex , avg(age) FROM student GROUP BY sex ORDER BY avg(age) ASC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(SALARY) DESC
Visualize LINE SELECT date_arrived , COUNT(date_arrived) FROM Dogs GROUP BY date_arrived ORDER BY date_arrived ASC
Visualize BAR SELECT gender , avg(age) FROM Person GROUP BY gender
Visualize BAR SELECT Is_full_time , COUNT(Is_full_time) FROM hiring GROUP BY Is_full_time ORDER BY COUNT(Is_full_time) DESC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT LName , COUNT(LName) FROM STUDENT WHERE Sex = "F" GROUP BY LName ORDER BY Age DESC
Visualize SCATTER SELECT EMPLOYEE_ID , COMMISSION_PCT FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType ORDER BY bedType DESC
Visualize BAR SELECT Name , Age FROM editor ORDER BY Name DESC
Visualize LINE SELECT Start_from , COUNT(Start_from) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize LINE SELECT HIRE_DATE , COMMISSION_PCT FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Event_Details , COUNT(Event_Details) FROM EVENTS GROUP BY Event_Details ORDER BY COUNT(Event_Details) ASC
Visualize LINE SELECT year , avg(attendance) FROM home_game GROUP BY YEAR ORDER BY year DESC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY School_ID ASC
Visualize BAR SELECT Type , avg(Tonnage) FROM ship GROUP BY TYPE ORDER BY Type DESC
Visualize BAR SELECT meter_700 , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT job , avg(age) FROM Person GROUP BY job
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(DEPARTMENT_ID) DESC
Visualize BAR SELECT Year , COUNT(Year) FROM movie  ORDER BY budget_million BIN Year BY YEAR
Visualize BAR SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass"  ORDER BY COUNT(date_test_taken) DESC BIN date_test_taken BY WEEKDAY
Visualize BAR SELECT destination , count(*) FROM Flight GROUP BY destination ORDER BY destination ASC
Visualize BAR SELECT ACC_Regular_Season , Team_ID FROM basketball_match ORDER BY Team_ID ASC
Visualize BAR SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize LINE SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male" BIN date_of_birth BY YEAR
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY CRS_CODE ASC
Visualize BAR SELECT AllergyType , COUNT(AllergyType) FROM Allergy_type GROUP BY AllergyType ORDER BY COUNT(AllergyType) DESC
Visualize BAR SELECT meter_200 , AVG(meter_100) FROM swimmer GROUP BY meter_200
Visualize BAR SELECT All_Home , SUM(School_ID) FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT Document_Type_Code , count(*) FROM Documents GROUP BY document_type_code ORDER BY count(*) ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT PetType , avg(pet_age) FROM pets GROUP BY pettype ORDER BY PetType DESC
Visualize BAR SELECT Location , count(*) FROM cinema GROUP BY LOCATION ORDER BY count(*) ASC
Visualize LINE SELECT Visit_Date , COUNT(Visit_Date) FROM VISITS BIN Visit_Date BY YEAR
Visualize BAR SELECT Home_city , AVG(Age) FROM driver GROUP BY Home_city ORDER BY AVG(Age) DESC
Visualize SCATTER SELECT max(Price) , max(Score) FROM WINE GROUP BY max(Price)
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY Sex DESC
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time ASC
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Away_team ,  Season
Visualize BAR SELECT date_from , COUNT(date_from) FROM Project_Staff BIN date_from BY WEEKDAY
Visualize BAR SELECT All_Home , AVG(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home ASC
Visualize SCATTER SELECT EMPLOYEE_ID , SALARY FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_code ORDER BY payment_method_code ASC
Visualize LINE SELECT built_year , COUNT(built_year) FROM mill WHERE TYPE = 'Grondzeiler'  ORDER BY built_year DESC BIN built_year BY YEAR
Visualize BAR SELECT COUNTRY_NAME , COUNT(COUNTRY_NAME) FROM countries GROUP BY COUNTRY_NAME ORDER BY COUNT(COUNTRY_NAME) ASC
Visualize BAR SELECT meter_500 , ID FROM swimmer ORDER BY ID ASC
Visualize BAR SELECT Winery , COUNT(Winery) FROM WINE WHERE Price > 100 GROUP BY Winery
Visualize PIE SELECT All_Road , Team_ID FROM basketball_match
Visualize BAR SELECT Rank , COUNT(Rank) FROM captain GROUP BY Rank ORDER BY Rank ASC
Visualize BAR SELECT Date_of_Birth , Weight FROM people ORDER BY Weight ASC
Visualize PIE SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT Director , COUNT(Director) FROM movie WHERE YEAR = 1999 OR YEAR = 2000 GROUP BY Director
Visualize BAR SELECT JOB_TITLE , max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000 ORDER BY JOB_TITLE ASC
Visualize BAR SELECT Home_city , COUNT(Home_city) FROM driver GROUP BY Home_city ORDER BY Home_city ASC
Visualize BAR SELECT staff_details , COUNT(staff_details) FROM Research_Staff GROUP BY staff_details ORDER BY staff_details ASC
Visualize BAR SELECT Location , COUNT(*) FROM performance GROUP BY LOCATION ORDER BY Location ASC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(DEPARTMENT_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Name ASC
Visualize BAR SELECT origin , COUNT(origin) FROM Flight GROUP BY origin ORDER BY origin
Visualize PIE SELECT City , count(*) FROM employee GROUP BY city
Visualize SCATTER SELECT People_ID , Height FROM people
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY COUNT(HIRE_DATE) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex ORDER BY AVG(Weight) ASC
Visualize BAR SELECT Sex , avg(age) FROM Student GROUP BY sex ORDER BY avg(age) DESC
Visualize BAR SELECT Number_of_matches , COUNT(Number_of_matches) FROM injury_accident WHERE injury != 'Knee problem' GROUP BY Number_of_matches ORDER BY Number_of_matches ASC
Visualize BAR SELECT All_Home , SUM(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home DESC
Visualize BAR SELECT Name , COUNT(Name) FROM products GROUP BY Name ORDER BY Name ASC
Visualize BAR SELECT Name , COUNT(Name) FROM technician GROUP BY Name ORDER BY Age ASC
Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY ACC_Regular_Season DESC
Visualize BAR SELECT personal_name , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male"  ORDER BY COUNT(date_of_birth) DESC BIN date_of_birth BY WEEKDAY
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT Budget_Type_Code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code
Visualize BAR SELECT Sex , SUM(Weight) FROM people GROUP BY Sex ORDER BY Sex ASC
Visualize SCATTER SELECT Destruction_Authorised_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID
Visualize BAR SELECT decor , min(basePrice) FROM Rooms GROUP BY decor
Visualize BAR SELECT Document_Name , COUNT(Document_Name) FROM Documents GROUP BY Document_Name ORDER BY COUNT(Document_Name) DESC
Visualize BAR SELECT Date_of_Birth , Weight FROM people ORDER BY Date_of_Birth DESC
Visualize BAR SELECT meter_200 , SUM(meter_100) FROM swimmer GROUP BY meter_200
Visualize BAR SELECT Investor , COUNT(Investor) FROM entrepreneur GROUP BY Investor ORDER BY COUNT(Investor) ASC
Visualize BAR SELECT meter_200 , AVG(ID) FROM swimmer GROUP BY meter_200 ORDER BY AVG(ID) DESC
Visualize BAR SELECT Class , count(*) FROM race GROUP BY CLASS
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY Sex ASC
Visualize BAR SELECT Class , COUNT(Class) FROM captain GROUP BY Class ORDER BY COUNT(Class) ASC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Location , SUM(Number_of_Platforms) FROM station GROUP BY Location ORDER BY Location ASC
Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex ORDER BY SUM(Height) ASC
Visualize LINE SELECT date_to , COUNT(date_to) FROM Project_Staff BIN date_to BY YEAR
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY City DESC
Visualize BAR SELECT Sex , max(age) FROM student GROUP BY Sex ORDER BY max(age) DESC
Visualize LINE SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male"  ORDER BY date_of_birth ASC BIN date_of_birth BY YEAR
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY meter_400 DESC
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY job DESC
Visualize LINE SELECT Start_from , Employee_ID FROM hiring ORDER BY Start_from ASC
Visualize BAR SELECT meter_500 , meter_100 FROM swimmer ORDER BY meter_500 ASC
Visualize PIE SELECT gender , avg(age) FROM Person GROUP BY gender
Visualize BAR SELECT Name , sum(revenue) FROM manufacturers GROUP BY name ORDER BY sum(revenue) DESC
Visualize BAR SELECT password , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code ORDER BY customer_status_code DESC
Visualize BAR SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male" BIN date_of_birth BY WEEKDAY
Visualize PIE SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code
Visualize BAR SELECT Sex , count(*) FROM employee WHERE salary < 50000 GROUP BY sex
Visualize PIE SELECT product_category , count(*) FROM mailshot_campaigns GROUP BY product_category
Visualize PIE SELECT Type , count(*) FROM store GROUP BY TYPE
Visualize SCATTER SELECT council_tax_id , cmi_cross_ref_id FROM parking_fines
Visualize BAR SELECT All_Road , ACC_Percent FROM basketball_match
Visualize BAR SELECT Pixel_aspect_ratio_PAR , COUNT(Pixel_aspect_ratio_PAR) FROM tv_channel WHERE LANGUAGE != 'English' GROUP BY Pixel_aspect_ratio_PAR
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY COUNT(Nationality) ASC
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY count(*) ASC
Visualize BAR SELECT Minister , COUNT(Minister) FROM party WHERE party_name != 'Progress Party' GROUP BY Minister ORDER BY Minister DESC
Visualize BAR SELECT Time_of_day , count(*) FROM broadcast GROUP BY time_of_day ORDER BY Time_of_day ASC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(EMPLOYEE_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY meter_300 ASC
Visualize BAR SELECT Allergy , count(*) FROM Has_allergy GROUP BY Allergy ORDER BY Allergy ASC
Visualize BAR SELECT All_Neutral , All_Games_Percent FROM basketball_match ORDER BY All_Neutral ASC
Visualize BAR SELECT gender , count(*) FROM dorm GROUP BY gender ORDER BY gender DESC
Visualize BAR SELECT AllergyType , count(*) FROM Allergy_type GROUP BY allergytype ORDER BY AllergyType DESC
Visualize SCATTER SELECT Advisor , count(*) FROM Student GROUP BY advisor
Visualize BAR SELECT Name , COUNT(Name) FROM technician WHERE Team != "NYY" GROUP BY Name ORDER BY COUNT(Name) ASC
Visualize BAR SELECT Description , COUNT(Description) FROM aircraft GROUP BY Description ORDER BY Description DESC
Visualize BAR SELECT County_name , Population FROM county
Visualize BAR SELECT gender , avg(age) FROM Person GROUP BY gender ORDER BY gender ASC
Visualize BAR SELECT Venue , COUNT(Venue) FROM debate GROUP BY Venue ORDER BY Venue DESC
Visualize PIE SELECT Type , COUNT(Type) FROM ship GROUP BY Type
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY School_ID ASC
Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Height DESC
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality ORDER BY SUM(ID) DESC
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring BIN Start_from BY YEAR
Visualize BAR SELECT Category , count(*) FROM book_club GROUP BY category ORDER BY Category DESC
Visualize BAR SELECT Nationality , AVG(ID) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(MANAGER_ID) DESC
Visualize BAR SELECT Team_Name , School_ID FROM basketball_match ORDER BY School_ID ASC
Visualize SCATTER SELECT Final_Table_Made , Best_Finish FROM poker_player
Visualize BAR SELECT Name , Cost FROM procedures ORDER BY cost DESC
Visualize BAR SELECT Type , avg(Tonnage) FROM ship GROUP BY TYPE
Visualize BAR SELECT Year , COUNT(Year) FROM cars_data where weight between 3000 and 4000  ORDER BY COUNT(Year) ASC BIN Year BY WEEKDAY
Visualize BAR SELECT Start_from , SUM(Shop_ID) FROM hiring BIN Start_from BY WEEKDAY
Visualize PIE SELECT All_Road , School_ID FROM basketball_match
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer ORDER BY meter_100 DESC
Visualize BAR SELECT Document_Type_Description , COUNT(Document_Type_Description) FROM Ref_document_types GROUP BY Document_Type_Description ORDER BY COUNT(Document_Type_Description) DESC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize BAR SELECT date , SUM(cloud_cover) FROM weather  ORDER BY SUM(cloud_cover) DESC BIN date BY YEAR
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY SUM(ID) ASC
Visualize BAR SELECT Is_full_time , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time ASC
Visualize SCATTER SELECT Shop_ID , Employee_ID FROM hiring
Visualize PIE SELECT result , COUNT(result) FROM battle WHERE bulgarian_commander != 'Boril' GROUP BY result
Visualize BAR SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize PIE SELECT Country , COUNT(Country) FROM singer GROUP BY Country
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Type ORDER BY COUNT(Type) DESC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(MANAGER_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY COUNT(HIRE_DATE) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(EMPLOYEE_ID) DESC
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY SUM(ID) DESC
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT start_station_name , start_station_id FROM trip
Visualize BAR SELECT All_Games , ACC_Percent FROM basketball_match ORDER BY All_Games ASC
Visualize BAR SELECT family_name , author_tutor_ATB FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT name , age FROM Dogs WHERE abandoned_yn = 1 ORDER BY age DESC
Visualize BAR SELECT All_Games , School_ID FROM basketball_match ORDER BY All_Games DESC
Visualize BAR SELECT Openning_year , SUM(Capacity) FROM cinema GROUP BY Openning_year ORDER BY SUM(Capacity) DESC
Visualize BAR SELECT Is_full_time , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Shop_ID) ASC
Visualize BAR SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Shop_ID) ASC BIN Start_from BY WEEKDAY
Visualize BAR SELECT state , COUNT(state) FROM votes GROUP BY state ORDER BY COUNT(state) DESC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY Minister DESC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT EMAIL , SALARY FROM employees
Visualize SCATTER SELECT avg(Price) , avg(Score) FROM WINE GROUP BY avg(Price)
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Denomination , COUNT(*) FROM school GROUP BY Denomination ORDER BY Denomination DESC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(MANAGER_ID) DESC
Visualize BAR SELECT PetType , avg(pet_age) FROM pets GROUP BY pettype ORDER BY avg(pet_age) DESC
Visualize LINE SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations GROUP BY Location_Code ORDER BY Date_in_Locaton_To DESC BIN Date_in_Locaton_To BY YEAR
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Name , AVG(Price) FROM products GROUP BY Name ORDER BY Name DESC
Visualize LINE SELECT Start_from , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT All_Neutral , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent DESC
Visualize BAR SELECT Sex , SUM(Weight) FROM people GROUP BY Sex
Visualize BAR SELECT Type , COUNT(*) FROM ship GROUP BY TYPE ORDER BY Type ASC
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality ORDER BY SUM(ID) ASC
Visualize BAR SELECT Team , COUNT(*) FROM technician GROUP BY Team ORDER BY COUNT(*) DESC
Visualize PIE SELECT gender , avg(age) FROM Person GROUP BY gender
Visualize SCATTER SELECT Team_ID , ACC_Percent FROM basketball_match GROUP BY All_Neutral
Visualize BAR SELECT DEPT_CODE , count(*) FROM professor WHERE prof_high_degree = 'Ph.D.' GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor ORDER BY count(*) DESC
Visualize BAR SELECT All_Home , AVG(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY AVG(School_ID) DESC
Visualize PIE SELECT Main_Industry , COUNT(Main_Industry) FROM company WHERE headquarters != 'USA' GROUP BY Main_Industry
Visualize BAR SELECT Nationality , AVG(Age) FROM journalist GROUP BY Nationality
Visualize BAR SELECT Country , COUNT(Country) FROM singer GROUP BY Country
Visualize LINE SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations GROUP BY Location_Code BIN Date_in_Location_From BY YEAR
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85  ORDER BY COUNT(date) DESC BIN date BY WEEKDAY
Visualize BAR SELECT job , avg(age) FROM Person GROUP BY job
Visualize BAR SELECT Location_Code , count(*) FROM Document_locations GROUP BY location_code ORDER BY Location_Code DESC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Language , count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY Language ASC
Visualize BAR SELECT All_Neutral , Team_ID FROM basketball_match
Visualize SCATTER SELECT EMPLOYEE_ID , DEPARTMENT_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT meter_200 , AVG(ID) FROM swimmer GROUP BY meter_200
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY COUNT(Sex) DESC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY COUNT(Nationality) DESC
Visualize LINE SELECT yearid , COUNT(yearid) FROM hall_of_fame BIN yearid BY YEAR
Visualize BAR SELECT destination , count(*) FROM Flight GROUP BY destination
Visualize BAR SELECT All_Neutral , School_ID FROM basketball_match ORDER BY All_Neutral ASC
Visualize BAR SELECT charge_type , charge_amount FROM Charges ORDER BY charge_type ASC
Visualize LINE SELECT Open_Date , COUNT(Open_Date) FROM Church GROUP BY Open_Date
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY COUNT(JOB_ID) DESC
Visualize LINE SELECT Openning_year , AVG(Capacity) FROM cinema  ORDER BY Openning_year ASC BIN Openning_year BY YEAR
Visualize SCATTER SELECT star_rating_code , avg(price_range) FROM HOTELS GROUP BY star_rating_code
Visualize BAR SELECT password , author_id FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT date_departed , COUNT(date_departed) FROM Dogs GROUP BY date_departed ORDER BY COUNT(date_departed) DESC
Visualize BAR SELECT Budget_Type_Code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code
Visualize BAR SELECT All_Home , SUM(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY SUM(Team_ID) DESC
Visualize BAR SELECT Team_Name , ACC_Percent FROM basketball_match ORDER BY Team_Name ASC
Visualize PIE SELECT Document_Type_Code , count(*) FROM Documents GROUP BY document_type_code
Visualize BAR SELECT Nationality , SUM(ID) FROM swimmer GROUP BY Nationality
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM journalist GROUP BY Nationality ORDER BY Nationality DESC
Visualize BAR SELECT date_arrived , COUNT(date_arrived) FROM Dogs BIN date_arrived BY WEEKDAY
Visualize BAR SELECT meter_200 , SUM(meter_100) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 DESC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(EMPLOYEE_ID) DESC
Visualize SCATTER SELECT author_id , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT Location , COUNT(*) FROM performance GROUP BY LOCATION ORDER BY COUNT(*) DESC
Visualize BAR SELECT Location , COUNT(Location) FROM wrestler GROUP BY Location ORDER BY COUNT(Location) ASC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex ORDER BY AVG(Weight) DESC
Visualize BAR SELECT DEPT_CODE , count(*) FROM student GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize BAR SELECT product_category , count(*) FROM mailshot_campaigns GROUP BY product_category ORDER BY product_category ASC
Visualize SCATTER SELECT id , duration FROM trip ORDER BY duration DESC LIMIT 3
Visualize BAR SELECT apt_type_code , min(room_count) FROM Apartments GROUP BY apt_type_code ORDER BY apt_type_code DESC
Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Name DESC
Visualize BAR SELECT booking_end_date , COUNT(booking_end_date) FROM Apartment_Bookings  ORDER BY COUNT(booking_end_date) ASC BIN booking_end_date BY YEAR
Visualize SCATTER SELECT avg(Price) , avg(Score) FROM WINE GROUP BY avg(Price)
Visualize BAR SELECT booking_end_date , COUNT(booking_end_date) FROM Apartment_Bookings BIN booking_end_date BY WEEKDAY
Visualize BAR SELECT date_account_opened , COUNT(date_account_opened) FROM Accounts GROUP BY other_account_details BIN date_account_opened BY WEEKDAY
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Name , max(revenue) FROM manufacturers GROUP BY Headquarter ORDER BY max(revenue) ASC
Visualize BAR SELECT Name , Height FROM people
Visualize BAR SELECT LAST_NAME , SALARY FROM employees ORDER BY LAST_NAME ASC
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize SCATTER SELECT order_id , count(*) FROM Order_items GROUP BY order_id
Visualize BAR SELECT PetType , max(weight) FROM pets GROUP BY PetType ORDER BY max(weight) DESC
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY All_Road DESC
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY All_Neutral
Visualize BAR SELECT Nationality , COUNT(*) FROM pilot GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT Grape , COUNT(Grape) FROM WINE GROUP BY Grape ORDER BY Grape ASC
Visualize PIE SELECT Name , Seating FROM track WHERE year_opened > 2000
Visualize BAR SELECT Class , avg(age) FROM captain GROUP BY CLASS ORDER BY avg(age) DESC
Visualize BAR SELECT Country , count(*) FROM stadium GROUP BY country ORDER BY count(*) ASC
Visualize PIE SELECT Location_Code , count(*) FROM Document_locations GROUP BY location_code
Visualize LINE SELECT Calendar_Date , COUNT(Calendar_Date) FROM Ref_calendar BIN Calendar_Date BY YEAR
Visualize BAR SELECT Party , COUNT(*) FROM people GROUP BY Party ORDER BY COUNT(*) ASC
Visualize BAR SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job ORDER BY avg(age) DESC
Visualize BAR SELECT Grape , COUNT(Grape) FROM WINE GROUP BY Grape ORDER BY COUNT(Grape) ASC
Visualize BAR SELECT Is_full_time , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time DESC
Visualize BAR SELECT job , avg(age) FROM Person GROUP BY job ORDER BY avg(age) DESC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT gender , count(*) FROM dorm GROUP BY gender ORDER BY gender ASC
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY count(*) DESC
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY Team_ID ASC
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT Country , COUNT(*) FROM member GROUP BY Country ORDER BY COUNT(*) ASC
Visualize SCATTER SELECT People_ID , Weight FROM people GROUP BY Sex
Visualize BAR SELECT date , mean_temperature_f FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3
Visualize BAR SELECT FIRST_NAME , MANAGER_ID FROM employees ORDER BY MANAGER_ID ASC
Visualize SCATTER SELECT Snatch , Clean_Jerk FROM body_builder
Visualize SCATTER SELECT age , weight FROM Dogs WHERE abandoned_yn = 1 GROUP BY name
Visualize BAR SELECT product_category , count(*) FROM mailshot_campaigns GROUP BY product_category
Visualize PIE SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code
Visualize SCATTER SELECT order_id , count(DISTINCT product_id) FROM Order_items
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Headquarters , COUNT(Headquarters) FROM company GROUP BY Headquarters ORDER BY COUNT(Headquarters) DESC
Visualize BAR SELECT meter_700 , meter_100 FROM swimmer ORDER BY meter_100 ASC
Visualize BAR SELECT Dates_active , Number_Deaths FROM storm WHERE number_deaths >= 1 ORDER BY Dates_active ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(EMPLOYEE_ID) DESC
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY meter_400 DESC
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality ORDER BY Nationality DESC
Visualize BAR SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType ORDER BY bedType DESC
Visualize BAR SELECT Team , COUNT(*) FROM elimination GROUP BY Team ORDER BY COUNT(*) DESC
Visualize BAR SELECT Headquarters , count(*) FROM company GROUP BY headquarters ORDER BY count(*) ASC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees  ORDER BY SUM(SALARY) DESC BIN HIRE_DATE BY WEEKDAY
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring  ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize BAR SELECT Openning_year , SUM(Capacity) FROM cinema GROUP BY Openning_year ORDER BY Openning_year ASC
Visualize PIE SELECT gender , count(*) FROM dorm GROUP BY gender
Visualize BAR SELECT Class , avg(age) FROM captain GROUP BY CLASS ORDER BY Class ASC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT Studio , COUNT(*) FROM film GROUP BY Studio ORDER BY Studio DESC
Visualize BAR SELECT product_name , COUNT(product_name) FROM products GROUP BY product_name ORDER BY product_name ASC
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY Time ASC
Visualize BAR SELECT Name , COUNT(Name) FROM Products GROUP BY Name ORDER BY COUNT(Name) ASC
Visualize BAR SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_code
Visualize BAR SELECT Location , AVG(Number_of_Platforms) FROM station GROUP BY Location ORDER BY AVG(Number_of_Platforms) ASC
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION ORDER BY count(*) ASC
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY Sex DESC
Visualize BAR SELECT Affiliation , sum(enrollment) FROM university GROUP BY affiliation
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY SUM(Employee_ID) ASC
Visualize BAR SELECT ACC_Regular_Season , Team_ID FROM basketball_match ORDER BY Team_ID DESC
Visualize BAR SELECT bedType , count(*) FROM Rooms GROUP BY bedType ORDER BY count(*) ASC
Visualize BAR SELECT Area , COUNT(Area) FROM APPELLATIONS GROUP BY Area ORDER BY COUNT(Area) ASC
Visualize BAR SELECT All_Games , Team_ID FROM basketball_match ORDER BY Team_ID ASC
Visualize SCATTER SELECT max(Accelerate) , Cylinders FROM CARS_DATA
Visualize BAR SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType ORDER BY avg(basePrice) ASC
Visualize BAR SELECT Competition_type , COUNT(Competition_type) FROM competition GROUP BY Competition_type ORDER BY Competition_type ASC
Visualize SCATTER SELECT People_ID , Height FROM people GROUP BY Sex
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY All_Home DESC
Visualize BAR SELECT product_category , count(*) FROM mailshot_campaigns GROUP BY product_category ORDER BY product_category ASC
Visualize SCATTER SELECT avg(age) , min(age) FROM captain GROUP BY CLASS
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code ORDER BY booking_status_code DESC
Visualize BAR SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type ORDER BY transaction_type ASC
Visualize BAR SELECT Nationality , AVG(ID) FROM swimmer GROUP BY Nationality ORDER BY AVG(ID) DESC
Visualize PIE SELECT All_Neutral , School_ID FROM basketball_match
Visualize SCATTER SELECT Snatch , Clean_Jerk FROM body_builder
Visualize BAR SELECT DEPT_CODE , count(*) FROM student GROUP BY dept_code ORDER BY count(*) ASC
Visualize BAR SELECT All_Home , AVG(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home DESC
Visualize BAR SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC
Visualize BAR SELECT Sex , AVG(Height) FROM people GROUP BY Sex ORDER BY AVG(Height) ASC
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer ORDER BY meter_100 ASC
Visualize BAR SELECT PetType , max(pet_age) FROM pets GROUP BY PetType ORDER BY PetType DESC
Visualize BAR SELECT Sex , count(*) FROM Faculty WHERE rank = "AsstProf" GROUP BY sex
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type
Visualize BAR SELECT All_Road , Team_ID FROM basketball_match
Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match GROUP BY All_Games
Visualize SCATTER SELECT order_id , sum(product_quantity) FROM Order_items GROUP BY order_id
Visualize BAR SELECT SportName , count(*) FROM Sportsinfo GROUP BY sportname
Visualize LINE SELECT date_from , COUNT(date_from) FROM Project_Staff BIN date_from BY YEAR
Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY Minister ASC
Visualize LINE SELECT yearid , COUNT(yearid) FROM hall_of_fame  ORDER BY yearid ASC BIN yearid BY YEAR
Visualize PIE SELECT All_Road , ACC_Percent FROM basketball_match
Visualize PIE SELECT role_code , count(*) FROM users GROUP BY role_code
Visualize BAR SELECT Sex , count(*) FROM Faculty WHERE rank = "AsstProf" GROUP BY sex ORDER BY Sex ASC
Visualize BAR SELECT meter_500 , meter_100 FROM swimmer ORDER BY meter_500 DESC
Visualize BAR SELECT Is_full_time , COUNT(Is_full_time) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time ASC
Visualize BAR SELECT Budget_Type_Code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) ASC
Visualize PIE SELECT city , COUNT(*) FROM station GROUP BY city
Visualize BAR SELECT Home_city , AVG(Age) FROM driver GROUP BY Home_city ORDER BY Home_city DESC
Visualize SCATTER SELECT Grade , count(*) FROM list GROUP BY grade
Visualize SCATTER SELECT avg(age) , min(age) FROM captain GROUP BY CLASS
Visualize BAR SELECT Type , avg(Tonnage) FROM ship GROUP BY TYPE
Visualize LINE SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass"  ORDER BY date_test_taken DESC BIN date_test_taken BY DAY
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY count(*) ASC
Visualize BAR SELECT booking_end_date , COUNT(booking_end_date) FROM Apartment_Bookings BIN booking_end_date BY WEEKDAY
Visualize BAR SELECT Category , count(*) FROM book_club GROUP BY category ORDER BY Category DESC
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize BAR SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType ORDER BY avg(basePrice) DESC
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(MANAGER_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT ACC_Regular_Season , School_ID FROM basketball_match
Visualize SCATTER SELECT count(*) , Project_ID FROM Documents WHERE document_type_code = "BK" GROUP BY project_id
Visualize BAR SELECT meter_500 , meter_100 FROM swimmer
Visualize BAR SELECT meter_400 , meter_100 FROM swimmer ORDER BY meter_400 DESC
Visualize BAR SELECT Days , SUM(Credits) FROM COURSE GROUP BY Days ORDER BY Credits
Visualize BAR SELECT Start_from , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY SUM(Employee_ID) DESC BIN Start_from BY WEEKDAY
Visualize BAR SELECT ACC_Road , AVG(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY AVG(School_ID) DESC
Visualize LINE SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass" BIN date_test_taken BY DAY
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize LINE SELECT Open_Date , COUNT(Open_Date) FROM Church GROUP BY Open_Date
Visualize BAR SELECT Fname , AVG(Age) FROM Student WHERE Sex = 'F' GROUP BY Fname ORDER BY Fname DESC
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(EMPLOYEE_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT ACC_Road , AVG(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(DEPARTMENT_ID) DESC
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY Team_Name
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY School_ID ASC
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex
Visualize BAR SELECT Location_Code , count(*) FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC
Visualize BAR SELECT Country , count(*) FROM stadium GROUP BY country ORDER BY Country ASC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY AVG(DEPARTMENT_ID) DESC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(MANAGER_ID) ASC
Visualize BAR SELECT DEPT_CODE , max(stu_gpa) FROM student GROUP BY DEPT_CODE
Visualize PIE SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
Visualize BAR SELECT Carrier , SUM(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY SUM(Memory_in_G) ASC
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code ORDER BY booking_status_code ASC
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY School_ID ASC
Visualize BAR SELECT Name , Weight FROM people ORDER BY Name DESC
Visualize BAR SELECT name , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT Document_Type_Description , COUNT(Document_Type_Description) FROM Ref_document_types GROUP BY Document_Type_Description
Visualize BAR SELECT Name , COUNT(Name) FROM technician GROUP BY Name ORDER BY Age ASC
Visualize SCATTER SELECT order_id , sum(product_quantity) FROM Order_items GROUP BY order_id
Visualize BAR SELECT section_description , COUNT(section_description) FROM Sections GROUP BY section_description ORDER BY COUNT(section_description) ASC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize PIE SELECT Country , count(*) FROM people GROUP BY country
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY Team_Name
Visualize BAR SELECT Nominee , COUNT(Nominee) FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derricks" GROUP BY Nominee ORDER BY Nominee DESC
Visualize BAR SELECT ACC_Regular_Season , School_ID FROM basketball_match ORDER BY ACC_Regular_Season DESC
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor ORDER BY Investor DESC
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home DESC
Visualize BAR SELECT All_Games , All_Games_Percent FROM basketball_match ORDER BY All_Games DESC
Visualize BAR SELECT DISTINCT state , COUNT(state) FROM votes GROUP BY state ORDER BY state DESC
Visualize BAR SELECT PetType , avg(weight) FROM pets GROUP BY pettype
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time BIN Start_from BY YEAR
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code
Visualize BAR SELECT ACC_Regular_Season , School_ID FROM basketball_match ORDER BY School_ID ASC
Visualize PIE SELECT County_name , Population FROM county
Visualize BAR SELECT payment_date , COUNT(payment_date) FROM payments WHERE amount_paid > 300 OR payment_type_code = 'Check'  ORDER BY COUNT(payment_date) ASC BIN payment_date BY MONTH
Visualize BAR SELECT Country , count(*) FROM airport GROUP BY country ORDER BY Country ASC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(DEPARTMENT_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations BIN Date_in_Locaton_To BY WEEKDAY
Visualize PIE SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events GROUP BY date_moved_in ORDER BY COUNT(date_moved_in) DESC
Visualize LINE SELECT Calendar_Date , COUNT(Calendar_Date) FROM Ref_calendar BIN Calendar_Date BY YEAR
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Employee_ID) ASC BIN Start_from BY WEEKDAY
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY Time DESC
Visualize BAR SELECT ACC_Road , SUM(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY SUM(School_ID) DESC
Visualize BAR SELECT Sex , AVG(Height) FROM people GROUP BY Sex ORDER BY Sex ASC
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY ID ASC
Visualize BAR SELECT destination , count(*) FROM Flight GROUP BY destination ORDER BY destination DESC
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY city_code ASC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Type , COUNT(*) FROM ship GROUP BY TYPE
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY All_Road
Visualize PIE SELECT Affiliation , sum(Enrollment) FROM university WHERE founded > 1850 GROUP BY affiliation
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize SCATTER SELECT Code , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 GROUP BY Name
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT LAST_NAME , EMPLOYEE_ID FROM employees ORDER BY EMPLOYEE_ID DESC
Visualize BAR SELECT LAST_NAME , EMPLOYEE_ID FROM employees ORDER BY EMPLOYEE_ID ASC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(DEPARTMENT_ID) DESC
Visualize BAR SELECT Home_city , COUNT(Home_city) FROM driver GROUP BY Home_city ORDER BY COUNT(Home_city) ASC
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY meter_400 ASC
Visualize LINE SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS WHERE share_count > 100 OR amount_of_transaction > 1000  ORDER BY date_of_transaction ASC BIN date_of_transaction BY YEAR
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events  ORDER BY COUNT(date_moved_in) ASC BIN date_moved_in BY YEAR
Visualize PIE SELECT All_Neutral , All_Games_Percent FROM basketball_match
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM ship GROUP BY Type ,  Nationality ORDER BY COUNT(Nationality) DESC
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match GROUP BY All_Road
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer ORDER BY meter_300 ASC
Visualize BAR SELECT Away_team , COUNT(Away_team) FROM game GROUP BY Home_team ,  Away_team ORDER BY COUNT(Away_team) DESC
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT Nationality , AVG(ID) FROM swimmer GROUP BY Nationality ORDER BY AVG(ID) DESC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring  ORDER BY AVG(Employee_ID) DESC BIN Start_from BY WEEKDAY
Visualize BAR SELECT meter_200 , COUNT(meter_200) FROM swimmer GROUP BY meter_200
Visualize BAR SELECT FIRST_NAME , MANAGER_ID FROM employees ORDER BY MANAGER_ID DESC
Visualize BAR SELECT Start_from , SUM(Employee_ID) FROM hiring BIN Start_from BY WEEKDAY
Visualize PIE SELECT Team_Name , Team_ID FROM basketball_match
Visualize BAR SELECT County_name , Population FROM county
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY All_Home DESC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees  ORDER BY SUM(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Name , SUM(Price) FROM products GROUP BY Name ORDER BY SUM(Price) DESC
Visualize BAR SELECT Country , COUNT(Country) FROM competition GROUP BY Competition_type ,  Country ORDER BY Country DESC
Visualize SCATTER SELECT avg(age) , max(age) FROM student GROUP BY Sex
Visualize BAR SELECT Name , COUNT(Name) FROM train GROUP BY Name ORDER BY Name DESC
Visualize PIE SELECT Location , COUNT(Location) FROM station GROUP BY Location
Visualize BAR SELECT city , COUNT(*) FROM station GROUP BY city ORDER BY city DESC
Visualize LINE SELECT year , COUNT(year) FROM home_game  ORDER BY year DESC BIN year BY YEAR
Visualize BAR SELECT Location , COUNT(Location) FROM wrestler GROUP BY Location ORDER BY COUNT(Location) DESC
Visualize SCATTER SELECT Team_ID , ACC_Percent FROM basketball_match GROUP BY Team_Name
Visualize BAR SELECT Participant_Type_Code , COUNT(Participant_Type_Code) FROM Participants GROUP BY Participant_Type_Code ORDER BY Participant_Type_Code DESC
Visualize BAR SELECT city_code , count(*) FROM student GROUP BY city_code ORDER BY count(*) ASC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT middle_name , author_id FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Name , Number_Deaths FROM storm WHERE number_deaths >= 1
Visualize BAR SELECT Home_city , COUNT(Home_city) FROM driver GROUP BY Home_city ORDER BY COUNT(Home_city) ASC
Visualize BAR SELECT Participant_Details , Participant_ID FROM Participants ORDER BY Participant_ID DESC
Visualize BAR SELECT meter_600 , ID FROM swimmer ORDER BY meter_600 DESC
Visualize BAR SELECT Description , COUNT(Description) FROM aircraft GROUP BY Description
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(SALARY) DESC BIN HIRE_DATE BY WEEKDAY
Visualize LINE SELECT Start_from , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize BAR SELECT All_Road , Team_ID FROM basketball_match ORDER BY Team_ID DESC
Visualize BAR SELECT state , SUM(vote_id) FROM votes GROUP BY state ORDER BY SUM(vote_id) ASC
Visualize BAR SELECT Country , COUNT(Country) FROM competition GROUP BY Competition_type ,  Country ORDER BY Country DESC
Visualize LINE SELECT Season , COUNT(Season) FROM game GROUP BY Home_team ORDER BY Season ASC BIN Season BY YEAR
Visualize LINE SELECT Season , COUNT(Season) FROM game BIN Season BY YEAR
Visualize BAR SELECT All_Road , ACC_Percent FROM basketball_match ORDER BY All_Road ASC
Visualize BAR SELECT payment_date , COUNT(payment_date) FROM payments WHERE amount_paid > 300 OR payment_type_code = 'Check'  ORDER BY COUNT(payment_date) DESC BIN payment_date BY WEEKDAY
Visualize BAR SELECT personal_name , author_id FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize SCATTER SELECT Code , min(price) FROM products GROUP BY Code
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY School_ID ASC
Visualize SCATTER SELECT MANAGER_ID , DEPARTMENT_ID FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality ORDER BY COUNT(*) ASC
Visualize LINE SELECT Visit_Date , COUNT(Visit_Date) FROM VISITS  ORDER BY Visit_Date ASC BIN Visit_Date BY YEAR
Visualize BAR SELECT Sex , count(*) FROM employee WHERE salary < 50000 GROUP BY sex ORDER BY Sex DESC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize SCATTER SELECT order_shipping_charges , customer_id FROM customer_orders WHERE order_status_code = 'Cancelled' OR order_status_code = 'Paid'
Visualize BAR SELECT Class , COUNT(Class) FROM captain GROUP BY Rank ,  Class
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY SUM(Employee_ID) DESC
Visualize SCATTER SELECT avg(pet_age) , max(pet_age) FROM pets GROUP BY pettype
Visualize BAR SELECT Flag , count(*) FROM ship GROUP BY flag ORDER BY count(*) ASC
Visualize SCATTER SELECT COMMISSION_PCT , MANAGER_ID FROM employees WHERE hire_date < '2002-06-21'
Visualize BAR SELECT Location , AVG(Number_of_Platforms) FROM station GROUP BY Location ORDER BY Location DESC
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex ORDER BY AVG(Weight) ASC
Visualize BAR SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category ORDER BY Category DESC
Visualize BAR SELECT asset_make , COUNT(asset_make) FROM Assets GROUP BY asset_make ORDER BY COUNT(asset_make) ASC
Visualize BAR SELECT Sex , AVG(Height) FROM people GROUP BY Sex ORDER BY Sex DESC
Visualize SCATTER SELECT Price , Manufacturer FROM products WHERE price BETWEEN 60 AND 120
Visualize BAR SELECT name , distance FROM Aircraft ORDER BY distance DESC
Visualize BAR SELECT All_Neutral , All_Games_Percent FROM basketball_match ORDER BY All_Neutral ASC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Name , Height FROM people ORDER BY Height ASC
Visualize BAR SELECT Name , Total_Passengers FROM station WHERE LOCATION != 'London' ORDER BY Name ASC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category
Visualize BAR SELECT EMAIL , EMPLOYEE_ID FROM employees ORDER BY EMPLOYEE_ID ASC
Visualize BAR SELECT LName , COUNT(LName) FROM Student WHERE Major = 600 GROUP BY LName ORDER BY LName ASC
Visualize PIE SELECT Nominee , COUNT(*) FROM musical GROUP BY Nominee
Visualize BAR SELECT Country , count(*) FROM people GROUP BY country ORDER BY Country DESC
Visualize BAR SELECT job , avg(age) FROM Person GROUP BY job ORDER BY avg(age) DESC
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Nationality ,  Type ORDER BY COUNT(Type) ASC
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(EMPLOYEE_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Took_office , COUNT(Took_office) FROM party GROUP BY Minister BIN Took_office BY WEEKDAY
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match
Visualize LINE SELECT Start_from , Shop_ID FROM hiring ORDER BY Start_from ASC
Visualize BAR SELECT Name , min(price) FROM products GROUP BY Name ORDER BY min(price) ASC
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY CRS_CODE DESC
Visualize BAR SELECT Name , Weight FROM people
Visualize BAR SELECT Team , COUNT(*) FROM elimination GROUP BY Team ORDER BY COUNT(*) DESC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY School_ID ASC
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE max_temperature_f >= 80 GROUP BY date
Visualize LINE SELECT Year , avg(Weight) FROM CARS_DATA GROUP BY YEAR
Visualize BAR SELECT meter_500 , ID FROM swimmer ORDER BY meter_500 ASC
Visualize BAR SELECT city , COUNT(*) FROM station GROUP BY city ORDER BY COUNT(*) DESC
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY min(age) ASC
Visualize BAR SELECT ACC_Road , AVG(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(EMPLOYEE_ID) DESC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Description , COUNT(Description) FROM aircraft GROUP BY Description ORDER BY Description DESC
Visualize PIE SELECT ACC_Regular_Season , ACC_Percent FROM basketball_match
Visualize BAR SELECT Team_Name , Team_ID FROM basketball_match ORDER BY Team_ID DESC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize SCATTER SELECT SALARY , COMMISSION_PCT FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT gender , avg(age) FROM Person GROUP BY gender
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Name , Height FROM people ORDER BY Height ASC
Visualize BAR SELECT Participant_Type_Code , COUNT(Participant_Type_Code) FROM Participants GROUP BY Participant_Type_Code
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home
Visualize PIE SELECT Result , COUNT(Result) FROM music_festival GROUP BY Result
Visualize BAR SELECT AllergyType , count(*) FROM Allergy_type GROUP BY allergytype
Visualize BAR SELECT lot_details , COUNT(lot_details) FROM LOTS GROUP BY lot_details
Visualize BAR SELECT Name , AVG(Price) FROM products GROUP BY Name ORDER BY AVG(Price) DESC
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events GROUP BY date_moved_in ORDER BY date_moved_in ASC
Visualize PIE SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match
Visualize BAR SELECT Directed_by , COUNT(Directed_by) FROM film GROUP BY Directed_by ORDER BY Directed_by ASC
Visualize BAR SELECT All_Home , SUM(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home DESC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT All_Neutral , Team_ID FROM basketball_match ORDER BY All_Neutral DESC
Visualize LINE SELECT yearid , count(*) FROM hall_of_fame GROUP BY yearid
Visualize BAR SELECT LAST_NAME , DEPARTMENT_ID FROM employees ORDER BY LAST_NAME DESC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize SCATTER SELECT max(stu_gpa) , avg(stu_gpa) FROM student GROUP BY DEPT_CODE
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY ID ASC
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 GROUP BY date ORDER BY date ASC
Visualize BAR SELECT All_Games , All_Games_Percent FROM basketball_match ORDER BY All_Games DESC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY SUM(Team_ID) DESC
Visualize BAR SELECT All_Neutral , School_ID FROM basketball_match ORDER BY School_ID DESC
Visualize BAR SELECT All_Neutral , School_ID FROM basketball_match ORDER BY All_Neutral DESC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY COUNT(JOB_ID) ASC
Visualize LINE SELECT Year , avg(Weight) FROM CARS_DATA GROUP BY YEAR ORDER BY Year ASC
Visualize BAR SELECT All_Games , All_Games_Percent FROM basketball_match ORDER BY All_Games ASC
Visualize LINE SELECT date_to , COUNT(date_to) FROM Project_Staff ORDER BY date_to DESC BIN date_to BY YEAR
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
Visualize BAR SELECT Duration , COUNT(Duration) FROM actor GROUP BY Duration ORDER BY Duration ASC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85  ORDER BY COUNT(date) DESC BIN date BY YEAR
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY ACC_Regular_Season
Visualize BAR SELECT Sex , avg(age) FROM Student GROUP BY sex ORDER BY Sex ASC
Visualize BAR SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type ORDER BY Competition_type ASC
Visualize BAR SELECT meter_200 , AVG(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 ASC
Visualize BAR SELECT Time , meter_100 FROM swimmer
Visualize LINE SELECT date_of_birth , COUNT(date_of_birth) FROM Customers WHERE customer_status_code = 'Good Customer'  ORDER BY date_of_birth DESC BIN date_of_birth BY YEAR
Visualize BAR SELECT Rank , count(*) FROM captain GROUP BY rank ORDER BY Rank ASC
Visualize BAR SELECT date , AVG(cloud_cover) FROM weather  ORDER BY AVG(cloud_cover) ASC BIN date BY WEEKDAY
Visualize BAR SELECT DISTINCT state , COUNT(state) FROM votes GROUP BY state ORDER BY state DESC
Visualize LINE SELECT Season , COUNT(Season) FROM game  ORDER BY Season DESC BIN Season BY YEAR
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY SUM(Team_ID) ASC
Visualize BAR SELECT Studio , COUNT(*) FROM film GROUP BY Studio ORDER BY COUNT(*) DESC
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events GROUP BY date_moved_in
Visualize BAR SELECT meter_200 , SUM(meter_100) FROM swimmer GROUP BY meter_200
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE ASC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize SCATTER SELECT Account_ID , Account_Details FROM Accounts
Visualize PIE SELECT Nominee , COUNT(Nominee) FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derricks" GROUP BY Nominee
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY count(*) ASC
Visualize BAR SELECT state , AVG(vote_id) FROM votes GROUP BY state ORDER BY AVG(vote_id) DESC
Visualize BAR SELECT Nominee , COUNT(Nominee) FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derricks" GROUP BY Nominee ORDER BY COUNT(Nominee) DESC
Visualize BAR SELECT Nominee , COUNT(*) FROM musical GROUP BY Nominee
Visualize BAR SELECT Building , count(*) FROM Faculty GROUP BY building ORDER BY count(*) DESC
Visualize BAR SELECT PetID , weight FROM pets WHERE pet_age > 1 ORDER BY PetID ASC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT County_name , Population FROM county ORDER BY Population DESC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY AVG(EMPLOYEE_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT District_name , City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000 ORDER BY District_name DESC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT name , ID FROM swimmer ORDER BY name ASC
Visualize BAR SELECT end_station_name , COUNT(end_station_name) FROM trip GROUP BY end_station_name ORDER BY id LIMIT 3
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize BAR SELECT All_Road , ACC_Percent FROM basketball_match ORDER BY ACC_Percent DESC
Visualize BAR SELECT Rank , COUNT(Rank) FROM captain GROUP BY Rank ORDER BY Rank DESC
Visualize BAR SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job ORDER BY job DESC
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM journalist GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT Rank , count(*) FROM captain GROUP BY rank ORDER BY Rank DESC
Visualize BAR SELECT All_Neutral , School_ID FROM basketball_match ORDER BY All_Neutral DESC
Visualize BAR SELECT PetType , avg(pet_age) FROM pets GROUP BY pettype ORDER BY PetType DESC
Visualize BAR SELECT apt_type_code , min(room_count) FROM Apartments GROUP BY apt_type_code ORDER BY min(room_count) ASC
Visualize LINE SELECT Openning_year , SUM(Capacity) FROM cinema  ORDER BY Openning_year ASC BIN Openning_year BY YEAR
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(EMPLOYEE_ID) ASC
Visualize BAR SELECT meter_700 , meter_100 FROM swimmer ORDER BY meter_100 ASC
Visualize BAR SELECT Start_from , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time BIN Start_from BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(SALARY) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT All_Neutral , ACC_Percent FROM basketball_match ORDER BY All_Neutral DESC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT PetType , avg(pet_age) FROM pets GROUP BY pettype ORDER BY PetType ASC
Visualize BAR SELECT Headquarters , COUNT(Headquarters) FROM company GROUP BY Headquarters ORDER BY COUNT(Headquarters) ASC
Visualize BAR SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type ORDER BY transaction_type DESC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(DEPARTMENT_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY meter_400 ASC
Visualize BAR SELECT Name , Code FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Code ASC
Visualize BAR SELECT Investor , COUNT(Investor) FROM entrepreneur GROUP BY Investor
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality
Visualize SCATTER SELECT investor_id , COUNT(*) FROM TRANSACTIONS WHERE transaction_type_code = "SALE" GROUP BY investor_id
Visualize BAR SELECT FIRST_NAME , SALARY FROM employees ORDER BY FIRST_NAME ASC
Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees ORDER BY FIRST_NAME DESC
Visualize SCATTER SELECT Code , Manufacturer FROM products WHERE price BETWEEN 60 AND 120
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize LINE SELECT Start_from , COUNT(Start_from) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize LINE SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS  ORDER BY date_of_transaction ASC BIN date_of_transaction BY YEAR
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(DEPARTMENT_ID) ASC
Visualize BAR SELECT date , COUNT(date) FROM weather  ORDER BY max_gust_speed_mph DESC LIMIT 3 BIN date BY WEEKDAY
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events BIN date_moved_in BY WEEKDAY
Visualize PIE SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time ASC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT outcome_code , count(*) FROM mailshot_customers GROUP BY outcome_code
Visualize BAR SELECT Carrier , SUM(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY Carrier ASC
Visualize BAR SELECT meter_200 , COUNT(meter_200) FROM swimmer GROUP BY meter_200
Visualize LINE SELECT Start_from , Employee_ID FROM hiring
Visualize BAR SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType ORDER BY avg(basePrice) DESC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY COUNT(HIRE_DATE) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Left_office , COUNT(Left_office) FROM party GROUP BY Minister ORDER BY COUNT(Left_office) DESC BIN Left_office BY WEEKDAY
Visualize BAR SELECT LName , AVG(Age) FROM Student WHERE Sex = 'F' GROUP BY LName ORDER BY LName ASC
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY WEEKDAY
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 GROUP BY date ORDER BY date DESC
Visualize BAR SELECT DEPT_CODE , sum(stu_hrs) FROM student GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality ORDER BY Nationality DESC
Visualize PIE SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road
Visualize PIE SELECT Class , count(*) FROM race GROUP BY CLASS
Visualize BAR SELECT customer_details , COUNT(customer_details) FROM Customers GROUP BY customer_details ORDER BY customer_details DESC
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY ACC_Regular_Season
Visualize LINE SELECT Start_from , Employee_ID FROM hiring ORDER BY Start_from DESC
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY Grape DESC
Visualize BAR SELECT DEPT_CODE , count(*) FROM professor WHERE prof_high_degree = 'Ph.D.' GROUP BY dept_code ORDER BY DEPT_CODE ASC
Visualize SCATTER SELECT Destruction_Authorised_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID
Visualize BAR SELECT Budget_Type_Code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) DESC
Visualize BAR SELECT meter_200 , COUNT(meter_200) FROM swimmer GROUP BY meter_200 ORDER BY COUNT(meter_200) DESC
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Position , COUNT(Position) FROM pilot GROUP BY Position ORDER BY COUNT(Position) DESC
Visualize BAR SELECT Document_Name , COUNT(Document_Name) FROM Documents GROUP BY Document_Name ORDER BY Document_Name DESC
Visualize SCATTER SELECT MIN(salary) , DEPARTMENT_ID FROM employees
Visualize BAR SELECT Role_Code , count(*) FROM Employees GROUP BY role_code ORDER BY Role_Code DESC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(MANAGER_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Date_of_Birth , Weight FROM people ORDER BY Weight DESC
Visualize PIE SELECT Team_Name , Team_ID FROM basketball_match
Visualize PIE SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type
Visualize BAR SELECT city , max(lat) FROM station GROUP BY city ORDER BY max(lat) DESC
Visualize BAR SELECT Main_Industry , sum(market_value) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC
Visualize BAR SELECT charge_type , charge_amount FROM Charges ORDER BY charge_type DESC
Visualize BAR SELECT AllergyType , COUNT(AllergyType) FROM Allergy_type GROUP BY AllergyType ORDER BY COUNT(AllergyType) ASC
Visualize BAR SELECT date_account_opened , COUNT(date_account_opened) FROM Accounts GROUP BY other_account_details BIN date_account_opened BY WEEKDAY
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY School_ID ASC
Visualize BAR SELECT Name , COUNT(Name) FROM technician GROUP BY Name ORDER BY Age ASC
Visualize LINE SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize BAR SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType ORDER BY avg(basePrice) ASC
Visualize BAR SELECT Carrier , AVG(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY AVG(Memory_in_G) DESC
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY city_code ASC
Visualize BAR SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS WHERE share_count >= 100 OR amount_of_transaction >= 100  ORDER BY COUNT(date_of_transaction) DESC BIN date_of_transaction BY WEEKDAY
Visualize PIE SELECT Type , avg(Tonnage) FROM ship GROUP BY TYPE
Visualize BAR SELECT Country , count(*) FROM singer GROUP BY country ORDER BY Country DESC
Visualize BAR SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male" BIN date_of_birth BY WEEKDAY
Visualize BAR SELECT Name , Weight FROM people ORDER BY Weight DESC
Visualize PIE SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code
Visualize LINE SELECT date_of_transaction , AVG(share_count) FROM TRANSACTIONS  ORDER BY date_of_transaction DESC BIN date_of_transaction BY YEAR
Visualize BAR SELECT Rank , count(*) FROM captain GROUP BY rank ORDER BY Rank DESC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY min(age) ASC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer ORDER BY meter_100 DESC
Visualize BAR SELECT AllergyType , count(*) FROM Allergy_type GROUP BY allergytype
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT destination , COUNT(destination) FROM Flight GROUP BY destination ORDER BY destination DESC
Visualize BAR SELECT PetType , max(weight) FROM pets GROUP BY PetType ORDER BY max(weight) ASC
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY meter_300 DESC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT Sex , min(weight) FROM people GROUP BY Sex ORDER BY min(weight) DESC
Visualize SCATTER SELECT max(Accelerate) , Cylinders FROM CARS_DATA
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY All_Home ASC
Visualize BAR SELECT DEPT_CODE , max(stu_gpa) FROM student GROUP BY DEPT_CODE ORDER BY DEPT_CODE ASC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Headquarter , Revenue FROM manufacturers ORDER BY revenue DESC
Visualize BAR SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS  ORDER BY COUNT(date_of_transaction) ASC BIN date_of_transaction BY WEEKDAY
Visualize BAR SELECT result , COUNT(result) FROM battle WHERE bulgarian_commander != 'Boril' GROUP BY result ORDER BY COUNT(result) DESC
Visualize BAR SELECT Name , Age FROM editor ORDER BY Age DESC
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home DESC
Visualize BAR SELECT ACC_Road , AVG(School_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY AVG(School_ID) DESC
Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT meter_600 , meter_100 FROM swimmer ORDER BY meter_600 ASC
Visualize PIE SELECT job , COUNT(job) FROM Person GROUP BY job
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize PIE SELECT Class , COUNT(Class) FROM captain GROUP BY Class
Visualize SCATTER SELECT Snatch , Clean_Jerk FROM body_builder
Visualize BAR SELECT All_Road , Team_ID FROM basketball_match ORDER BY All_Road ASC
Visualize PIE SELECT charge_type , charge_amount FROM Charges
Visualize BAR SELECT Carrier , AVG(Memory_in_G) FROM phone GROUP BY Carrier ORDER BY AVG(Memory_in_G) DESC
Visualize BAR SELECT Pixel_aspect_ratio_PAR , COUNT(Pixel_aspect_ratio_PAR) FROM tv_channel WHERE LANGUAGE != 'English' GROUP BY Pixel_aspect_ratio_PAR ORDER BY Pixel_aspect_ratio_PAR DESC
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE ASC
Visualize PIE SELECT city , COUNT(*) FROM station GROUP BY city
Visualize BAR SELECT Is_full_time , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Employee_ID) DESC
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY Team_Name
Visualize BAR SELECT Competition_type , COUNT(Competition_type) FROM competition GROUP BY Competition_type ORDER BY COUNT(Competition_type) ASC
Visualize PIE SELECT Affiliation , sum(Enrollment) FROM university WHERE founded > 1850 GROUP BY affiliation
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(MANAGER_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home DESC
Visualize BAR SELECT Nationality , SUM(meter_100) FROM swimmer GROUP BY Nationality ORDER BY Nationality DESC
Visualize BAR SELECT Team , COUNT(*) FROM technician GROUP BY Team ORDER BY Team DESC
Visualize SCATTER SELECT Team_ID , ACC_Percent FROM basketball_match GROUP BY Team_Name
Visualize BAR SELECT Is_full_time , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time ASC
Visualize BAR SELECT Participant_Type_Code , COUNT(Participant_Type_Code) FROM Participants GROUP BY Participant_Type_Code ORDER BY Participant_Type_Code ASC
Visualize BAR SELECT Date_of_Birth , Weight FROM people
Visualize SCATTER SELECT Code , Price FROM products WHERE price BETWEEN 60 AND 120
Visualize BAR SELECT date , AVG(cloud_cover) FROM weather BIN date BY WEEKDAY
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize SCATTER SELECT author_id , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT middle_name , author_id FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT Type , sum(enrollment) FROM institution GROUP BY TYPE ORDER BY Type DESC
Visualize BAR SELECT city , max(lat) FROM station GROUP BY city ORDER BY city DESC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT Country , COUNT(Country) FROM member GROUP BY Country ORDER BY Country ASC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Sex , SUM(Weight) FROM people GROUP BY Sex
Visualize BAR SELECT city , COUNT(*) FROM station GROUP BY city ORDER BY city DESC
Visualize BAR SELECT Type , COUNT(*) FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC
Visualize BAR SELECT receipt_date , COUNT(receipt_date) FROM Documents  ORDER BY COUNT(receipt_date) ASC BIN receipt_date BY WEEKDAY
Visualize BAR SELECT Is_full_time , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Employee_ID) ASC
Visualize BAR SELECT meter_600 , meter_100 FROM swimmer ORDER BY meter_600 ASC
Visualize BAR SELECT premises_type , count(*) FROM premises GROUP BY premises_type ORDER BY count(*) DESC
Visualize BAR SELECT Start_from , SUM(Employee_ID) FROM hiring BIN Start_from BY WEEKDAY
Visualize BAR SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time BIN Start_from BY WEEKDAY
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor
Visualize BAR SELECT bedType , count(*) FROM Rooms GROUP BY bedType
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT Team_Name , Team_ID FROM basketball_match ORDER BY Team_ID ASC
Visualize LINE SELECT HIRE_DATE , COMMISSION_PCT FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE DESC
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM residents BIN date_moved_in BY WEEKDAY
Visualize BAR SELECT Flag , count(*) FROM ship GROUP BY flag ORDER BY count(*) ASC
Visualize BAR SELECT District_name , City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000
Visualize BAR SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Shop_ID) DESC BIN Start_from BY WEEKDAY
Visualize BAR SELECT Hometown , COUNT(Hometown) FROM member GROUP BY Hometown
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality ORDER BY Nationality DESC
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY City ASC
Visualize PIE SELECT Building , count(*) FROM Faculty GROUP BY building
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize LINE SELECT Openning_year , COUNT(Openning_year) FROM cinema  ORDER BY Openning_year DESC BIN Openning_year BY YEAR
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT SCHOOL_CODE , count(DISTINCT dept_address) FROM department ORDER BY SCHOOL_CODE ASC
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT ACC_Road , AVG(Team_ID) FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT STATE_PROVINCE , COUNT(STATE_PROVINCE) FROM locations GROUP BY STATE_PROVINCE ORDER BY STATE_PROVINCE ASC
Visualize BAR SELECT Team_Name , School_ID FROM basketball_match ORDER BY Team_Name ASC
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home DESC
Visualize BAR SELECT Location , SUM(Number_of_Platforms) FROM station GROUP BY Location ORDER BY SUM(Number_of_Platforms) DESC
Visualize BAR SELECT meter_200 , SUM(ID) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 ASC
Visualize BAR SELECT date_arrived , COUNT(date_arrived) FROM Dogs BIN date_arrived BY YEAR
Visualize PIE SELECT All_Road , All_Games_Percent FROM basketball_match
Visualize PIE SELECT Is_full_time , COUNT(Is_full_time) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT Role_Code , count(*) FROM Employees GROUP BY role_code ORDER BY Role_Code ASC
Visualize SCATTER SELECT COMMISSION_PCT , MANAGER_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE first_name NOT LIKE '%M%' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize PIE SELECT Team_Name , School_ID FROM basketball_match
Visualize BAR SELECT DEPT_CODE , count(*) FROM professor WHERE prof_high_degree = 'Ph.D.' GROUP BY dept_code ORDER BY count(*) ASC
Visualize BAR SELECT FIRST_NAME , COUNT(FIRST_NAME) FROM employees WHERE first_name LIKE '%m' GROUP BY FIRST_NAME
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY HIRE_DATE ASC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type ORDER BY transaction_type ASC
Visualize BAR SELECT Country , COUNT(*) FROM member GROUP BY Country ORDER BY Country DESC
Visualize SCATTER SELECT COMMISSION_PCT , MANAGER_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize LINE SELECT Start_from , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT Location , sum(total_passengers) FROM station GROUP BY LOCATION ORDER BY Location DESC
Visualize BAR SELECT Time_of_day , count(*) FROM broadcast GROUP BY time_of_day
Visualize SCATTER SELECT count(*) , customer_id FROM Accounts GROUP BY customer_id
Visualize BAR SELECT Sex , AVG(Weight) FROM people GROUP BY Sex ORDER BY AVG(Weight) DESC
Visualize BAR SELECT Investor , COUNT(Investor) FROM entrepreneur GROUP BY Investor ORDER BY COUNT(Investor) DESC
Visualize BAR SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality ORDER BY SUM(Age) ASC
Visualize BAR SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC
Visualize SCATTER SELECT avg(pet_age) , max(pet_age) FROM pets GROUP BY pettype
Visualize BAR SELECT Name , COUNT(Name) FROM Products GROUP BY Name ORDER BY Name DESC
Visualize LINE SELECT date_account_opened , COUNT(date_account_opened) FROM Accounts GROUP BY other_account_details ORDER BY date_account_opened DESC BIN date_account_opened BY YEAR
Visualize LINE SELECT Start_from , Shop_ID FROM hiring
Visualize SCATTER SELECT star_rating_code , avg(price_range) FROM HOTELS GROUP BY star_rating_code
Visualize BAR SELECT Building , count(*) FROM Faculty GROUP BY building
Visualize BAR SELECT name , COUNT(name) FROM playlists GROUP BY name ORDER BY COUNT(name) ASC
Visualize BAR SELECT Result , COUNT(Result) FROM music_festival GROUP BY Result ORDER BY Result DESC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize SCATTER SELECT avg(age) , max(age) FROM Student GROUP BY major
Visualize BAR SELECT date , AVG(cloud_cover) FROM weather  ORDER BY AVG(cloud_cover) DESC BIN date BY YEAR
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize PIE SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex
Visualize BAR SELECT Team_Name , ACC_Percent FROM basketball_match ORDER BY ACC_Percent DESC
Visualize BAR SELECT Team , COUNT(*) FROM technician GROUP BY Team ORDER BY Team ASC
Visualize BAR SELECT CITY , COUNT(CITY) FROM locations GROUP BY CITY ORDER BY CITY ASC
Visualize BAR SELECT Team , COUNT(Team) FROM elimination GROUP BY Team ORDER BY Team DESC
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY City ASC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(EMPLOYEE_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Name , SUM(Price) FROM products GROUP BY Name
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY Grape ASC
Visualize BAR SELECT Rank , count(*) FROM Faculty GROUP BY rank ORDER BY count(*) ASC
Visualize BAR SELECT apt_type_code , min(room_count) FROM Apartments GROUP BY apt_type_code ORDER BY apt_type_code ASC
Visualize BAR SELECT state , COUNT(state) FROM votes GROUP BY state ORDER BY state DESC
Visualize SCATTER SELECT gender , count(*) FROM Customers GROUP BY gender
Visualize BAR SELECT Country , count(*) FROM singer GROUP BY country
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY count(*) DESC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape ORDER BY Grape ASC
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY All_Road ASC
Visualize BAR SELECT Building , count(*) FROM Faculty GROUP BY building ORDER BY count(*) ASC
Visualize BAR SELECT Name , Code FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Code DESC
Visualize LINE SELECT date_of_completion , COUNT(date_of_completion) FROM Student_Course_Enrolment GROUP BY date_of_completion ORDER BY date_of_completion ASC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees  ORDER BY COUNT(HIRE_DATE) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT payment_method_code , COUNT(payment_method_code) FROM customers GROUP BY payment_method_code ORDER BY customer_number DESC
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Name , Revenue FROM manufacturers ORDER BY revenue DESC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT ACC_Regular_Season , ACC_Percent FROM basketball_match ORDER BY ACC_Percent DESC
Visualize BAR SELECT start_station_name , start_station_id FROM trip
Visualize BAR SELECT Party , COUNT(*) FROM people GROUP BY Party ORDER BY COUNT(*) DESC
Visualize BAR SELECT Name , Number_Deaths FROM storm WHERE number_deaths >= 1
Visualize SCATTER SELECT DEPARTMENT_ID , SUM(salary) FROM employees GROUP BY department_id
Visualize BAR SELECT meter_500 , ID FROM swimmer ORDER BY ID ASC
Visualize BAR SELECT Nationality , COUNT(*) FROM journalist GROUP BY Nationality ORDER BY COUNT(*) ASC
Visualize SCATTER SELECT Physician , Department FROM affiliated_with WHERE primaryaffiliation = 1
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY count(*) DESC
Visualize BAR SELECT LAST_NAME , EMPLOYEE_ID FROM employees ORDER BY LAST_NAME ASC
Visualize SCATTER SELECT COMMISSION_PCT , MANAGER_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY SUM(Employee_ID) ASC
Visualize BAR SELECT Language , count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY Language DESC
Visualize PIE SELECT brand , COUNT(brand) FROM camera_lens GROUP BY brand
Visualize BAR SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company ORDER BY Record_Company ASC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT Location_Code , count(*) FROM Document_locations GROUP BY location_code ORDER BY count(*) ASC
Visualize BAR SELECT Name , SUM(Price) FROM products GROUP BY Name ORDER BY SUM(Price) DESC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(MANAGER_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Type , count(*) FROM institution GROUP BY TYPE
Visualize BAR SELECT Event_Details , COUNT(Event_Details) FROM EVENTS GROUP BY Event_Details ORDER BY COUNT(Event_Details) ASC
Visualize LINE SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS BIN date_of_transaction BY YEAR
Visualize BAR SELECT All_Road , ACC_Percent FROM basketball_match ORDER BY ACC_Percent ASC
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION ORDER BY Position ASC
Visualize LINE SELECT HIRE_DATE , SALARY FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE ASC
Visualize SCATTER SELECT author_tutor_ATB , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT outcome_code , count(*) FROM mailshot_customers GROUP BY outcome_code ORDER BY outcome_code ASC
Visualize LINE SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations  ORDER BY Date_in_Locaton_To ASC BIN Date_in_Locaton_To BY YEAR
Visualize BAR SELECT Country , COUNT(Country) FROM competition GROUP BY Competition_type ,  Country ORDER BY Country ASC
Visualize BAR SELECT PetType , max(pet_age) FROM pets GROUP BY PetType
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize PIE SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality
Visualize SCATTER SELECT count(*) , sum(enrollment) FROM institution GROUP BY TYPE
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31  ORDER BY COUNT(date) ASC BIN date BY WEEKDAY
Visualize SCATTER SELECT Major , count(*) FROM Student GROUP BY Major
Visualize PIE SELECT Pixel_aspect_ratio_PAR , COUNT(Pixel_aspect_ratio_PAR) FROM tv_channel WHERE LANGUAGE != 'English' GROUP BY Pixel_aspect_ratio_PAR
Visualize BAR SELECT Team , COUNT(*) FROM technician GROUP BY Team ORDER BY Team DESC
Visualize BAR SELECT meter_400 , meter_100 FROM swimmer ORDER BY meter_400 DESC
Visualize BAR SELECT All_Neutral , Team_ID FROM basketball_match ORDER BY All_Neutral DESC
Visualize BAR SELECT Headquarter , max(revenue) FROM manufacturers GROUP BY Headquarter ORDER BY Headquarter ASC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY MONTH
Visualize LINE SELECT yearid , COUNT(yearid) FROM hall_of_fame  ORDER BY yearid ASC BIN yearid BY YEAR
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor ORDER BY Investor DESC
Visualize BAR SELECT All_Road , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize BAR SELECT Start_from , COUNT(Start_from) FROM hiring GROUP BY Is_full_time BIN Start_from BY WEEKDAY
Visualize BAR SELECT All_Home , SUM(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY SUM(Team_ID) ASC
Visualize PIE SELECT Competition_type , COUNT(Competition_type) FROM competition GROUP BY Competition_type
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY ACC_Road
Visualize PIE SELECT role_code , count(*) FROM users GROUP BY role_code
Visualize BAR SELECT meter_200 , AVG(ID) FROM swimmer GROUP BY meter_200 ORDER BY AVG(ID) DESC
Visualize BAR SELECT Type , count(*) FROM store GROUP BY TYPE ORDER BY count(*) ASC
Visualize BAR SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality ORDER BY SUM(Age) ASC
Visualize BAR SELECT Days , COUNT(Days) FROM COURSE GROUP BY Days ORDER BY Credits
Visualize BAR SELECT Name , COUNT(Name) FROM technician WHERE Team != "NYY" GROUP BY Name ORDER BY COUNT(Name) ASC
Visualize BAR SELECT ACC_Road , SUM(Team_ID) FROM basketball_match GROUP BY ACC_Road ORDER BY SUM(Team_ID) DESC
Visualize BAR SELECT meter_200 , AVG(meter_100) FROM swimmer GROUP BY meter_200 ORDER BY AVG(meter_100) ASC
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM ship GROUP BY Nationality ORDER BY COUNT(Nationality) ASC
Visualize BAR SELECT Start_from , SUM(Shop_ID) FROM hiring  ORDER BY SUM(Shop_ID) ASC BIN Start_from BY WEEKDAY
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Budget_Type_Code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) ASC
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match GROUP BY All_Games
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY ID DESC
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31 GROUP BY date
Visualize BAR SELECT Party , COUNT(*) FROM representative GROUP BY Party ORDER BY Party ASC
Visualize BAR SELECT booking_status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code ORDER BY booking_status_code ASC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize BAR SELECT Nationality , AVG(meter_100) FROM swimmer GROUP BY Nationality ORDER BY AVG(meter_100) DESC
Visualize BAR SELECT All_Games , ACC_Percent FROM basketball_match ORDER BY ACC_Percent DESC
Visualize BAR SELECT Manager_Name , COUNT(Manager_Name) FROM gas_station GROUP BY Manager_Name ORDER BY COUNT(Manager_Name) DESC
Visualize BAR SELECT installation_date , COUNT(installation_date) FROM station BIN installation_date BY YEAR
Visualize LINE SELECT date_of_transaction , COUNT(date_of_transaction) FROM TRANSACTIONS WHERE share_count < 10 BIN date_of_transaction BY YEAR
Visualize BAR SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC
Visualize BAR SELECT Category , COUNT(Category) FROM music_festival WHERE RESULT = "Awarded" GROUP BY Category ORDER BY Category ASC
Visualize BAR SELECT Area , COUNT(Area) FROM APPELLATIONS GROUP BY Area
Visualize BAR SELECT Nominee , COUNT(Nominee) FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derricks" GROUP BY Nominee ORDER BY COUNT(Nominee) DESC
Visualize BAR SELECT Document_Type_Code , count(*) FROM Documents GROUP BY document_type_code ORDER BY Document_Type_Code DESC
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT state , AVG(vote_id) FROM votes GROUP BY state ORDER BY AVG(vote_id) DESC
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY All_Home ASC
Visualize PIE SELECT DEPT_CODE , sum(crs_credit) FROM course GROUP BY dept_code
Visualize BAR SELECT CITY , COUNT(CITY) FROM locations GROUP BY CITY
Visualize PIE SELECT Team_Name , ACC_Percent FROM basketball_match
Visualize SCATTER SELECT Price , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 GROUP BY Name
Visualize LINE SELECT HIRE_DATE , EMPLOYEE_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize BAR SELECT DEPT_CODE , sum(crs_credit) FROM course GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize BAR SELECT Location_Code , count(*) FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC
Visualize BAR SELECT Role_Code , count(*) FROM Employees GROUP BY role_code ORDER BY Role_Code DESC
Visualize BAR SELECT Description , COUNT(Description) FROM aircraft GROUP BY Description ORDER BY Description DESC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY min(age) DESC
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE basePrice > 120 GROUP BY decor ORDER BY decor DESC
Visualize LINE SELECT date_of_completion , COUNT(date_of_completion) FROM Student_Course_Enrolment GROUP BY date_of_completion ORDER BY date_of_completion DESC
Visualize BAR SELECT city , COUNT(*) FROM station GROUP BY city
Visualize BAR SELECT Role_Code , count(*) FROM Employees GROUP BY role_code ORDER BY count(*) DESC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Name DESC
Visualize BAR SELECT meter_400 , meter_100 FROM swimmer ORDER BY meter_100 DESC
Visualize BAR SELECT city_code , count(*) FROM student GROUP BY city_code ORDER BY city_code DESC
Visualize BAR SELECT Nationality , COUNT(*) FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC
Visualize BAR SELECT Time , meter_100 FROM swimmer ORDER BY Time DESC
Visualize LINE SELECT date_of_transaction , SUM(share_count) FROM TRANSACTIONS  ORDER BY date_of_transaction ASC BIN date_of_transaction BY YEAR
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(EMPLOYEE_ID) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT color , COUNT(color) FROM photos GROUP BY color ORDER BY COUNT(color) DESC
Visualize BAR SELECT All_Home , SUM(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home DESC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(MANAGER_ID) ASC
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY All_Road ASC
Visualize BAR SELECT HIRE_DATE , SUM(EMPLOYEE_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(EMPLOYEE_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE first_name NOT LIKE '%M%'  ORDER BY SUM(SALARY) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT billing_country , SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8
Visualize BAR SELECT role_code , count(*) FROM users GROUP BY role_code ORDER BY role_code DESC
Visualize BAR SELECT PetType , avg(pet_age) FROM pets GROUP BY pettype ORDER BY avg(pet_age) DESC
Visualize SCATTER SELECT avg(pet_age) , max(pet_age) FROM pets GROUP BY pettype
Visualize BAR SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job ORDER BY job DESC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY COUNT(JOB_ID) DESC
Visualize BAR SELECT meter_700 , ID FROM swimmer ORDER BY meter_700 DESC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT All_Neutral , ACC_Percent FROM basketball_match ORDER BY All_Neutral DESC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY AVG(SALARY) ASC
Visualize LINE SELECT Year , avg(Price) FROM WINE GROUP BY YEAR
Visualize SCATTER SELECT avg(basePrice) , min(basePrice) FROM Rooms GROUP BY decor
Visualize BAR SELECT SportName , count(*) FROM Sportsinfo GROUP BY sportname
Visualize BAR SELECT FIRST_NAME , MANAGER_ID FROM employees
Visualize BAR SELECT Time , meter_100 FROM swimmer
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize BAR SELECT CLASS_ROOM , count(*) FROM CLASS GROUP BY class_room ORDER BY CLASS_ROOM ASC
Visualize BAR SELECT Record_Company , COUNT(Record_Company) FROM orchestra GROUP BY Record_Company ORDER BY Year_of_Founded DESC
Visualize BAR SELECT gender , sum(student_capacity) FROM dorm GROUP BY gender ORDER BY sum(student_capacity) DESC
Visualize PIE SELECT city , max(lat) FROM station GROUP BY city
Visualize BAR SELECT All_Road , Team_ID FROM basketball_match ORDER BY Team_ID DESC
Visualize SCATTER SELECT order_id , count(*) FROM Order_items GROUP BY order_id
Visualize BAR SELECT Sex , avg(age) FROM student GROUP BY sex ORDER BY Sex DESC
Visualize BAR SELECT name , meter_100 FROM swimmer ORDER BY name DESC
Visualize BAR SELECT Competition_type , COUNT(Competition_type) FROM competition GROUP BY Competition_type
Visualize BAR SELECT All_Home , SUM(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY SUM(School_ID) ASC
Visualize BAR SELECT All_Home , COUNT(All_Home) FROM basketball_match GROUP BY All_Home ORDER BY COUNT(All_Home) DESC
Visualize LINE SELECT Date_in_Locaton_To , COUNT(Date_in_Locaton_To) FROM Document_locations GROUP BY Date_in_Locaton_To ORDER BY Date_in_Locaton_To DESC
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY AVG(Employee_ID) DESC BIN Start_from BY WEEKDAY
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM ship GROUP BY Type ,  Nationality ORDER BY COUNT(Nationality) DESC
Visualize LINE SELECT date_arrived , COUNT(date_arrived) FROM Dogs GROUP BY date_arrived ORDER BY date_arrived DESC
Visualize BAR SELECT test_result , COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality ORDER BY Nationality DESC
Visualize BAR SELECT Software_Platform , COUNT(*) FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC
Visualize BAR SELECT Type , sum(enrollment) FROM institution GROUP BY TYPE ORDER BY sum(enrollment) DESC
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time BIN Start_from BY WEEKDAY
Visualize BAR SELECT Affiliation , sum(Enrollment) FROM university WHERE founded > 1850 GROUP BY affiliation
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT Participant_Type_Code , COUNT(Participant_Type_Code) FROM Participants GROUP BY Participant_Type_Code ORDER BY COUNT(Participant_Type_Code) DESC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT meter_600 , meter_100 FROM swimmer ORDER BY meter_100 ASC
Visualize PIE SELECT All_Road , Team_ID FROM basketball_match
Visualize BAR SELECT date , COUNT(date) FROM battle GROUP BY date ORDER BY date DESC
Visualize BAR SELECT Sex , avg(weight) FROM people GROUP BY sex ORDER BY avg(weight) ASC
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM ship GROUP BY Type ,  Nationality
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize PIE SELECT Name , Code FROM products WHERE price BETWEEN 60 AND 120
Visualize BAR SELECT Party , count(*) FROM driver GROUP BY party ORDER BY Party ASC
Visualize BAR SELECT All_Home , AVG(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home ASC
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY avg(age) ASC
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Main_Industry , sum(market_value) FROM company GROUP BY main_industry ORDER BY Main_Industry DESC
Visualize BAR SELECT Nationality , COUNT(*) FROM journalist GROUP BY Nationality ORDER BY COUNT(*) DESC
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY All_Road ASC
Visualize SCATTER SELECT Snatch , Total FROM body_builder
Visualize BAR SELECT CLASS_ROOM , count(*) FROM CLASS GROUP BY class_room ORDER BY CLASS_ROOM DESC
Visualize BAR SELECT Type , COUNT(*) FROM artwork GROUP BY TYPE ORDER BY Type DESC
Visualize BAR SELECT Sex , avg(weight) FROM people GROUP BY sex
Visualize LINE SELECT Start_from , COUNT(Start_from) FROM hiring  ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize SCATTER SELECT EMPLOYEE_ID , MANAGER_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize BAR SELECT Venue , COUNT(Venue) FROM debate GROUP BY Venue
Visualize BAR SELECT Director , COUNT(Director) FROM movie WHERE YEAR = 1999 OR YEAR = 2000 GROUP BY Director
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize LINE SELECT date_of_completion , COUNT(date_of_completion) FROM Student_Course_Enrolment GROUP BY date_of_completion
Visualize BAR SELECT Headquarters , count(*) FROM company GROUP BY headquarters ORDER BY count(*) ASC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT Country , COUNT(*) FROM member GROUP BY Country ORDER BY Country DESC
Visualize BAR SELECT gender , count(*) FROM Person WHERE age < 40 GROUP BY gender
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize PIE SELECT Nationality , COUNT(*) FROM journalist GROUP BY Nationality
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY ID ASC
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize BAR SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring BIN Start_from BY YEAR
Visualize PIE SELECT Country , count(*) FROM singer GROUP BY country
Visualize BAR SELECT Nationality , AVG(Age) FROM journalist GROUP BY Nationality ORDER BY AVG(Age) DESC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY School_ID ASC
Visualize BAR SELECT Nationality , SUM(Age) FROM journalist GROUP BY Nationality ORDER BY Nationality DESC
Visualize BAR SELECT Name , COUNT(Name) FROM products WHERE price <= 200 GROUP BY Name ORDER BY Name DESC
Visualize PIE SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex
Visualize BAR SELECT DEPT_CODE , sum(crs_credit) FROM course GROUP BY dept_code ORDER BY sum(crs_credit) DESC
Visualize SCATTER SELECT Team_ID , All_Games_Percent FROM basketball_match GROUP BY All_Games
Visualize BAR SELECT ACC_Regular_Season , ACC_Percent FROM basketball_match
Visualize BAR SELECT All_Road , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize BAR SELECT ACC_Road , AVG(Team_ID) FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY COUNT(JOB_ID) DESC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name NOT LIKE '%M%'  ORDER BY AVG(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT meter_600 , meter_100 FROM swimmer ORDER BY meter_100 DESC
Visualize SCATTER SELECT People_ID , Snatch FROM body_builder
Visualize BAR SELECT Date_of_Birth , Weight FROM people ORDER BY Weight ASC
Visualize BAR SELECT COUNTRY_NAME , COUNT(COUNTRY_NAME) FROM countries GROUP BY COUNTRY_NAME ORDER BY COUNT(COUNTRY_NAME) ASC
Visualize BAR SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85  ORDER BY COUNT(date) DESC BIN date BY WEEKDAY
Visualize BAR SELECT ACC_Regular_Season , ACC_Percent FROM basketball_match ORDER BY ACC_Percent ASC
Visualize SCATTER SELECT EMPLOYEE_ID , MANAGER_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home
Visualize BAR SELECT Is_full_time , SUM(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time DESC
Visualize PIE SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor
Visualize SCATTER SELECT Classroom , count(*) FROM list GROUP BY classroom
Visualize BAR SELECT year , COUNT(year) FROM home_game BIN year BY WEEKDAY
Visualize LINE SELECT date_of_birth , COUNT(date_of_birth) FROM Guests WHERE gender_code = "Male"  ORDER BY date_of_birth DESC BIN date_of_birth BY YEAR
Visualize BAR SELECT DEPT_CODE , avg(stu_gpa) FROM student GROUP BY dept_code ORDER BY DEPT_CODE DESC
Visualize LINE SELECT date_of_birth , COUNT(date_of_birth) FROM Customers WHERE customer_status_code = 'Good Customer' BIN date_of_birth BY YEAR
Visualize BAR SELECT Document_Type_Code , count(*) FROM Documents GROUP BY document_type_code ORDER BY count(*) DESC
Visualize BAR SELECT Document_Type_Code , count(*) FROM Documents GROUP BY document_type_code ORDER BY Document_Type_Code DESC
Visualize BAR SELECT date_of_enrolment , COUNT(date_of_enrolment) FROM Student_Course_Enrolment  ORDER BY COUNT(date_of_enrolment) ASC BIN date_of_enrolment BY MONTH
Visualize BAR SELECT Nationality , COUNT(*) FROM pilot GROUP BY Nationality ORDER BY COUNT(*) ASC
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID
Visualize BAR SELECT decor , count(*) FROM Rooms WHERE basePrice > 120 GROUP BY decor ORDER BY count(*) DESC
Visualize BAR SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY Sex ASC
Visualize BAR SELECT meter_400 , meter_100 FROM swimmer ORDER BY meter_100 DESC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(DEPARTMENT_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC
Visualize BAR SELECT Name , Height FROM people ORDER BY Name DESC
Visualize SCATTER SELECT Team_ID , ACC_Percent FROM basketball_match GROUP BY All_Neutral
Visualize LINE SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations  ORDER BY Date_in_Location_From DESC BIN Date_in_Location_From BY YEAR
Visualize BAR SELECT Name , Capacity FROM cinema ORDER BY Name DESC
Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize BAR SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road ORDER BY COUNT(ACC_Road) DESC
Visualize BAR SELECT Language , count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY Language DESC
Visualize BAR SELECT role_code , count(*) FROM users GROUP BY role_code ORDER BY count(*) ASC
Visualize BAR SELECT Nationality , AVG(Age) FROM journalist GROUP BY Nationality ORDER BY AVG(Age) ASC
Visualize BAR SELECT Building , count(*) FROM Faculty GROUP BY building ORDER BY count(*) DESC
Visualize BAR SELECT name , meter_100 FROM swimmer ORDER BY meter_100 ASC
Visualize BAR SELECT bedType , count(*) FROM Rooms GROUP BY bedType
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home ORDER BY Team_ID ASC
Visualize BAR SELECT Date_in_Location_From , COUNT(Date_in_Location_From) FROM Document_locations  ORDER BY COUNT(Date_in_Location_From) ASC BIN Date_in_Location_From BY WEEKDAY
Visualize BAR SELECT Country , COUNT(Country) FROM singer GROUP BY Country ORDER BY Country DESC
Visualize BAR SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_code ORDER BY count(*) ASC
Visualize SCATTER SELECT People_ID , Height FROM people GROUP BY Sex
Visualize BAR SELECT EMAIL , SALARY FROM employees ORDER BY SALARY DESC
Visualize BAR SELECT Minister , COUNT(Minister) FROM party GROUP BY Minister ORDER BY Minister DESC
Visualize BAR SELECT All_Games , School_ID FROM basketball_match ORDER BY All_Games DESC
Visualize PIE SELECT SCHOOL_CODE , count(DISTINCT dept_address) FROM department
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT other_details , resident_id FROM Residents ORDER BY other_details DESC
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT All_Neutral , All_Games_Percent FROM basketball_match ORDER BY All_Neutral DESC
Visualize BAR SELECT Founder , sum(revenue) FROM manufacturers GROUP BY founder ORDER BY Founder ASC
Visualize BAR SELECT JOB_ID , SUM(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize SCATTER SELECT Code , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 GROUP BY Name
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE max_temperature_f > 85 GROUP BY date ORDER BY date ASC
Visualize BAR SELECT Name , Price FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Name DESC
Visualize PIE SELECT All_Home , COUNT(All_Home) FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT SCHOOL_CODE , count(DISTINCT dept_name) FROM department ORDER BY count(DISTINCT dept_name) DESC
Visualize BAR SELECT Name , Manufacturer FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Manufacturer DESC
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT Is_full_time , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time ASC
Visualize BAR SELECT city_code , count(*) FROM student GROUP BY city_code ORDER BY count(*) ASC
Visualize BAR SELECT JOB_ID , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY AVG(EMPLOYEE_ID) ASC
Visualize BAR SELECT Team_Name , School_ID FROM basketball_match ORDER BY Team_Name DESC
Visualize BAR SELECT city_code , count(*) FROM student GROUP BY city_code
Visualize LINE SELECT Start_from , AVG(Shop_ID) FROM hiring GROUP BY Is_full_time ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT Manager_Name , COUNT(Manager_Name) FROM gas_station GROUP BY Manager_Name
Visualize BAR SELECT Company , Market_Value FROM company WHERE main_industry = 'Banking' ORDER BY sales_billion , profits_billion
Visualize BAR SELECT PetType , avg(pet_age) FROM pets GROUP BY pettype
Visualize LINE SELECT Start_from , SUM(Shop_ID) FROM hiring  ORDER BY Start_from DESC BIN Start_from BY YEAR
Visualize BAR SELECT Name , COUNT(Name) FROM technician GROUP BY Name ORDER BY Age ASC
Visualize BAR SELECT Type , COUNT(*) FROM ship GROUP BY TYPE ORDER BY COUNT(*) ASC
Visualize BAR SELECT login_name , gender_mf FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT County , COUNT(County) FROM APPELLATIONS GROUP BY County ORDER BY County DESC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize LINE SELECT date_of_transaction , AVG(share_count) FROM TRANSACTIONS  ORDER BY date_of_transaction DESC BIN date_of_transaction BY YEAR
Visualize BAR SELECT Time , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT destination , count(*) FROM Flight GROUP BY destination ORDER BY count(*) ASC
Visualize BAR SELECT Position , count(*) FROM player WHERE points < 30 GROUP BY POSITION
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY AVG(DEPARTMENT_ID) ASC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY SUM(DEPARTMENT_ID) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT meter_600 , ID FROM swimmer ORDER BY meter_600 ASC
Visualize PIE SELECT Result , COUNT(Result) FROM music_festival GROUP BY Result
Visualize BAR SELECT bedType , count(*) FROM Rooms GROUP BY bedType ORDER BY count(*) ASC
Visualize PIE SELECT PetType , avg(weight) FROM pets GROUP BY pettype
Visualize BAR SELECT JOB_ID , SUM(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize PIE SELECT Team , COUNT(Team) FROM elimination GROUP BY Team
Visualize BAR SELECT Sex , avg(age) FROM Student GROUP BY sex ORDER BY Sex DESC
Visualize BAR SELECT Team_Name , ACC_Percent FROM basketball_match ORDER BY ACC_Percent ASC
Visualize BAR SELECT All_Home , AVG(School_ID) FROM basketball_match GROUP BY All_Home ORDER BY All_Home ASC
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Type ORDER BY COUNT(Type) DESC
Visualize BAR SELECT meter_200 , COUNT(meter_200) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 DESC
Visualize BAR SELECT Rank , COUNT(Rank) FROM captain GROUP BY Rank ORDER BY Rank ASC
Visualize BAR SELECT All_Road , All_Games_Percent FROM basketball_match ORDER BY All_Road DESC
Visualize BAR SELECT bedType , COUNT(bedType) FROM Rooms WHERE decor = "traditional" GROUP BY bedType ORDER BY bedType ASC
Visualize BAR SELECT meter_200 , SUM(meter_100) FROM swimmer GROUP BY meter_200 ORDER BY meter_200 DESC
Visualize PIE SELECT other_account_details , COUNT(other_account_details) FROM Accounts GROUP BY other_account_details
Visualize BAR SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship ORDER BY max(Net_Worth_Millions) ASC
Visualize BAR SELECT Name , COUNT(Name) FROM train GROUP BY Name ORDER BY Name DESC
Visualize LINE SELECT year , avg(attendance) FROM home_game GROUP BY YEAR ORDER BY year DESC
Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Date_of_Birth DESC
Visualize BAR SELECT Name , COUNT(Name) FROM editor GROUP BY Name ORDER BY COUNT(Name) DESC
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize SCATTER SELECT Destroyed_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE DESC
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 ORDER BY HIRE_DATE ASC
Visualize BAR SELECT Sex , AVG(Height) FROM people GROUP BY Sex ORDER BY AVG(Height) DESC
Visualize BAR SELECT Fate , COUNT(Fate) FROM mission GROUP BY Fate ORDER BY Fate ASC
Visualize BAR SELECT date_account_opened , COUNT(date_account_opened) FROM Accounts  ORDER BY COUNT(date_account_opened) DESC BIN date_account_opened BY WEEKDAY
Visualize BAR SELECT Name , Code FROM products WHERE price BETWEEN 60 AND 120 ORDER BY Name ASC
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home ASC
Visualize PIE SELECT job , avg(age) FROM Person WHERE gender = 'male' GROUP BY job
Visualize LINE SELECT Start_from , AVG(Employee_ID) FROM hiring  ORDER BY Start_from ASC BIN Start_from BY YEAR
Visualize BAR SELECT Sex , SUM(Height) FROM people GROUP BY Sex
Visualize BAR SELECT ACC_Road , COUNT(ACC_Road) FROM basketball_match GROUP BY ACC_Road ORDER BY ACC_Road DESC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees WHERE first_name NOT LIKE '%M%'  ORDER BY COUNT(HIRE_DATE) ASC BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Year , COUNT(Year) FROM WINE WHERE Price > 100  ORDER BY COUNT(Year) DESC BIN Year BY WEEKDAY
Visualize BAR SELECT date_test_taken , COUNT(date_test_taken) FROM Student_Tests_Taken WHERE test_result = "Pass" GROUP BY date_test_taken ORDER BY date_test_taken DESC
Visualize BAR SELECT Document_Name , COUNT(Document_Name) FROM Documents GROUP BY Document_Name ORDER BY Document_Name ASC
Visualize PIE SELECT job , avg(age) FROM Person GROUP BY job
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY Nationality ASC
Visualize BAR SELECT Team , COUNT(Team) FROM elimination GROUP BY Team ORDER BY COUNT(Team) ASC
Visualize SCATTER SELECT Destroyed_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize BAR SELECT EMP_FNAME , COUNT(EMP_FNAME) FROM employee WHERE emp_jobcode = 'PROF' GROUP BY EMP_FNAME ORDER BY emp_dob
Visualize BAR SELECT Description , COUNT(Description) FROM aircraft GROUP BY Description ORDER BY Description ASC
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE hire_date < '2002-06-21' ORDER BY HIRE_DATE ASC
Visualize BAR SELECT City , count(*) FROM employee GROUP BY city ORDER BY City DESC
Visualize BAR SELECT District_name , City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000 ORDER BY District_name ASC
Visualize BAR SELECT Publication_Date , COUNT(Publication_Date) FROM publication GROUP BY Publication_Date ORDER BY Price DESC
Visualize BAR SELECT Sex , AVG(Height) FROM people GROUP BY Sex ORDER BY AVG(Height) DESC
Visualize SCATTER SELECT ACC_Percent , All_Games_Percent FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT SCHOOL_CODE , count(DISTINCT dept_name) FROM department ORDER BY SCHOOL_CODE DESC
Visualize BAR SELECT job , min(age) FROM Person GROUP BY job ORDER BY min(age) DESC
Visualize BAR SELECT Open_Date , COUNT(Open_Date) FROM church  ORDER BY COUNT(Open_Date) ASC BIN Open_Date BY WEEKDAY
Visualize BAR SELECT Result , COUNT(Result) FROM music_festival GROUP BY Result ORDER BY Result ASC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE hire_date < '2002-06-21'  ORDER BY SUM(SALARY) DESC BIN HIRE_DATE BY MONTH
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM customer_events GROUP BY date_moved_in ORDER BY COUNT(date_moved_in) DESC
Visualize PIE SELECT PetType , avg(weight) FROM pets GROUP BY pettype
Visualize BAR SELECT District_name , City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000 ORDER BY City_Population DESC
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home ASC
Visualize PIE SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type
Visualize LINE SELECT HIRE_DATE , MANAGER_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize LINE SELECT built_year , COUNT(built_year) FROM mill WHERE TYPE = 'Grondzeiler' BIN built_year BY YEAR
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Type
Visualize BAR SELECT city_code , avg(age) FROM student GROUP BY city_code ORDER BY avg(age) ASC
Visualize BAR SELECT city_code , count(*) FROM Student GROUP BY city_code
Visualize BAR SELECT date_moved_in , COUNT(date_moved_in) FROM residents BIN date_moved_in BY WEEKDAY
Visualize BAR SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
Visualize BAR SELECT FIRST_NAME , SALARY FROM employees ORDER BY SALARY DESC
Visualize BAR SELECT date , COUNT(date) FROM weather  ORDER BY COUNT(date) ASC BIN date BY WEEKDAY
Visualize BAR SELECT Winery , COUNT(Winery) FROM WINE WHERE Price > 100 GROUP BY Winery ORDER BY Winery DESC
Visualize BAR SELECT Type , COUNT(Type) FROM ship GROUP BY Nationality ,  Type ORDER BY COUNT(Type) DESC
Visualize LINE SELECT HIRE_DATE , DEPARTMENT_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY HIRE_DATE ASC
Visualize BAR SELECT meter_200 , AVG(meter_100) FROM swimmer GROUP BY meter_200 ORDER BY AVG(meter_100) DESC
Visualize BAR SELECT Name , COUNT(Name) FROM products GROUP BY Name
Visualize PIE SELECT Role_Code , count(*) FROM Employees GROUP BY role_code
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY COUNT(Nationality) ASC
Visualize SCATTER SELECT Classroom , Grade FROM list
Visualize BAR SELECT All_Road , School_ID FROM basketball_match ORDER BY School_ID ASC
Visualize BAR SELECT HIRE_DATE , COUNT(HIRE_DATE) FROM employees BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY School_ID DESC
Visualize BAR SELECT meter_700 , meter_100 FROM swimmer
Visualize BAR SELECT FIRST_NAME , DEPARTMENT_ID FROM employees ORDER BY DEPARTMENT_ID ASC
Visualize PIE SELECT Team , COUNT(*) FROM technician GROUP BY Team
Visualize SCATTER SELECT avg(basePrice) , min(basePrice) FROM Rooms GROUP BY decor
Visualize BAR SELECT JOB_ID , SUM(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY SUM(EMPLOYEE_ID) DESC
Visualize BAR SELECT All_Road , All_Games_Percent FROM basketball_match ORDER BY All_Road ASC
Visualize BAR SELECT ACC_Road , School_ID FROM basketball_match GROUP BY All_Home ,  ACC_Road
Visualize BAR SELECT gender , count(*) FROM Person WHERE age < 40 GROUP BY gender ORDER BY gender DESC
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT Founder , sum(revenue) FROM manufacturers GROUP BY founder ORDER BY sum(revenue) ASC
Visualize BAR SELECT meter_400 , ID FROM swimmer ORDER BY meter_400 ASC
Visualize BAR SELECT installation_date , COUNT(installation_date) FROM station  ORDER BY COUNT(installation_date) ASC BIN installation_date BY YEAR
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY MONTH
Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match GROUP BY ACC_Road
Visualize BAR SELECT asset_make , COUNT(asset_make) FROM Assets GROUP BY asset_make
Visualize BAR SELECT LName , AVG(Age) FROM Student WHERE Sex = 'F' GROUP BY LName ORDER BY AVG(Age) DESC
Visualize BAR SELECT Participant_Type_Code , COUNT(Participant_Type_Code) FROM Participants GROUP BY Participant_Type_Code ORDER BY Participant_Type_Code ASC
Visualize BAR SELECT STATE_PROVINCE , COUNT(STATE_PROVINCE) FROM locations GROUP BY STATE_PROVINCE ORDER BY COUNT(STATE_PROVINCE) DESC
Visualize SCATTER SELECT star_rating_code , avg(price_range) FROM HOTELS GROUP BY star_rating_code
Visualize BAR SELECT customer_details , COUNT(customer_details) FROM Customers GROUP BY customer_details
Visualize BAR SELECT All_Home , School_ID FROM basketball_match GROUP BY ACC_Home ,  All_Home ORDER BY All_Home ASC
Visualize BAR SELECT JOB_ID , SUM(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Nationality , COUNT(Nationality) FROM swimmer GROUP BY Nationality ORDER BY COUNT(Nationality) ASC
Visualize BAR SELECT Type , COUNT(*) FROM ship GROUP BY TYPE ORDER BY Type ASC
Visualize BAR SELECT HIRE_DATE , SUM(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID
Visualize BAR SELECT JOB_ID , AVG(SALARY) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY AVG(SALARY) DESC
Visualize BAR SELECT Home_city , AVG(Age) FROM driver GROUP BY Home_city ORDER BY AVG(Age) ASC
Visualize BAR SELECT Team_Name , School_ID FROM basketball_match
Visualize SCATTER SELECT avg(age) , min(age) FROM captain GROUP BY Class
Visualize SCATTER SELECT Team_ID , School_ID FROM basketball_match GROUP BY ACC_Home
Visualize BAR SELECT origin , count(*) FROM Flight GROUP BY origin ORDER BY origin ASC
Visualize BAR SELECT Studio , COUNT(*) FROM film GROUP BY Studio
Visualize BAR SELECT CRS_CODE , count(*) FROM CLASS GROUP BY crs_code ORDER BY count(*) DESC
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY ID ASC
Visualize BAR SELECT Position , avg(Points) FROM player GROUP BY POSITION ORDER BY Position DESC
Visualize BAR SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) ASC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Country , COUNT(Country) FROM competition GROUP BY Country ORDER BY COUNT(Country) DESC
Visualize BAR SELECT All_Road , Team_ID FROM basketball_match ORDER BY All_Road DESC
Visualize BAR SELECT ACC_Regular_Season , All_Games_Percent FROM basketball_match ORDER BY ACC_Regular_Season DESC
Visualize BAR SELECT Studio , COUNT(*) FROM film GROUP BY Studio ORDER BY Studio ASC
Visualize BAR SELECT All_Home , Team_ID FROM basketball_match GROUP BY ACC_Road ,  All_Home
Visualize PIE SELECT Name , Seating FROM track WHERE year_opened > 2000
Visualize BAR SELECT Is_full_time , AVG(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time DESC
Visualize BAR SELECT date_of_latest_logon , COUNT(date_of_latest_logon) FROM Students WHERE family_name = "Jaskolski" OR family_name = "Langosh" BIN date_of_latest_logon BY WEEKDAY
Visualize BAR SELECT Start_from , AVG(Employee_ID) FROM hiring  ORDER BY AVG(Employee_ID) DESC BIN Start_from BY WEEKDAY
Visualize BAR SELECT LAST_NAME , MANAGER_ID FROM employees ORDER BY MANAGER_ID DESC
Visualize BAR SELECT Carrier , COUNT(Carrier) FROM phone GROUP BY Carrier ORDER BY Carrier ASC
Visualize BAR SELECT HIRE_DATE , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT Publisher , COUNT(*) FROM publication GROUP BY Publisher ORDER BY COUNT(*) ASC
Visualize BAR SELECT Grape , count(*) FROM WINE GROUP BY Grape
Visualize BAR SELECT meter_300 , ID FROM swimmer ORDER BY ID DESC
Visualize BAR SELECT Team_Name , All_Games_Percent FROM basketball_match ORDER BY All_Games_Percent ASC
Visualize BAR SELECT Nominee , COUNT(Nominee) FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derricks" GROUP BY Nominee
Visualize BAR SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) ASC
Visualize SCATTER SELECT max(stu_gpa) , avg(stu_gpa) FROM student GROUP BY DEPT_CODE
Visualize BAR SELECT HIRE_DATE , SUM(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' BIN HIRE_DATE BY MONTH
Visualize SCATTER SELECT max(Price) , max(Score) FROM WINE GROUP BY max(Price)
Visualize BAR SELECT middle_name , author_tutor_ATB FROM Course_Authors_and_Tutors ORDER BY personal_name
Visualize BAR SELECT Building , count(*) FROM Faculty GROUP BY building ORDER BY Building ASC
Visualize BAR SELECT JOB_ID , AVG(MANAGER_ID) FROM employees WHERE hire_date < '2002-06-21' GROUP BY JOB_ID ORDER BY JOB_ID DESC
Visualize BAR SELECT All_Road , ACC_Percent FROM basketball_match ORDER BY All_Road ASC
Visualize BAR SELECT HIRE_DATE , AVG(EMPLOYEE_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT All_Home , COUNT(All_Home) FROM basketball_match GROUP BY All_Home ORDER BY COUNT(All_Home) ASC
Visualize BAR SELECT HIRE_DATE , SUM(SALARY) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40  ORDER BY SUM(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize LINE SELECT HIRE_DATE , COMMISSION_PCT FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT Date_of_Birth , Height FROM people ORDER BY Height ASC
Visualize BAR SELECT All_Neutral , Team_ID FROM basketball_match ORDER BY Team_ID DESC
Visualize PIE SELECT SCHOOL_CODE , count(DISTINCT dept_address) FROM department
Visualize BAR SELECT JOB_ID , AVG(DEPARTMENT_ID) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' GROUP BY JOB_ID ORDER BY JOB_ID ASC
Visualize BAR SELECT Location , sum(number_of_platforms) FROM station GROUP BY LOCATION
Visualize BAR SELECT HIRE_DATE , AVG(SALARY) FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'  ORDER BY AVG(SALARY) ASC BIN HIRE_DATE BY MONTH
Visualize LINE SELECT year , avg(attendance) FROM home_game GROUP BY YEAR
Visualize BAR SELECT name , ID FROM swimmer
Visualize BAR SELECT Is_full_time , SUM(Employee_ID) FROM hiring GROUP BY Is_full_time ORDER BY Is_full_time DESC
Visualize BAR SELECT Name , max(revenue) FROM manufacturers GROUP BY Headquarter ORDER BY Name ASC
Visualize BAR SELECT All_Home , AVG(Team_ID) FROM basketball_match GROUP BY All_Home ORDER BY AVG(Team_ID) ASC
Visualize SCATTER SELECT School_ID , All_Games_Percent FROM basketball_match
Visualize PIE SELECT Is_full_time , COUNT(Is_full_time) FROM hiring GROUP BY Is_full_time
Visualize BAR SELECT All_Neutral , ACC_Percent FROM basketball_match ORDER BY All_Neutral ASC
Visualize BAR SELECT Owner , sum(Rating_in_percent) FROM channel GROUP BY OWNER ORDER BY Owner ASC
Visualize BAR SELECT Hometown , Age FROM teacher ORDER BY Hometown ASC
Visualize BAR SELECT Sex , COUNT(Sex) FROM people GROUP BY Sex ORDER BY COUNT(Sex) ASC
Visualize LINE SELECT Start_from , SUM(Employee_ID) FROM hiring BIN Start_from BY YEAR
Visualize BAR SELECT Rank , count(*) FROM captain GROUP BY rank ORDER BY Rank ASC
Visualize SCATTER SELECT School_ID , ACC_Percent FROM basketball_match GROUP BY All_Neutral
Visualize BAR SELECT destination , COUNT(destination) FROM Flight WHERE price > 300 GROUP BY destination ORDER BY COUNT(destination) ASC
Visualize BAR SELECT ACC_Road , Team_ID FROM basketball_match GROUP BY ACC_Home ,  ACC_Road ORDER BY ACC_Road ASC
Visualize BAR SELECT meter_300 , meter_100 FROM swimmer ORDER BY meter_300 ASC
Visualize BAR SELECT JOB_ID , COUNT(JOB_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 GROUP BY JOB_ID
Visualize SCATTER SELECT COMMISSION_PCT , DEPARTMENT_ID FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%'
Visualize BAR SELECT HIRE_DATE , AVG(MANAGER_ID) FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40 BIN HIRE_DATE BY WEEKDAY
Visualize BAR SELECT city_code , count(*) FROM student GROUP BY city_code
Visualize BAR SELECT Country , COUNT(Country) FROM competition GROUP BY Competition_type ,  Country ORDER BY COUNT(Country) DESC
Visualize SCATTER SELECT EMPLOYEE_ID , COMMISSION_PCT FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
Visualize BAR SELECT All_Home , COUNT(All_Home) FROM basketball_match GROUP BY All_Home
Visualize BAR SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
Visualize LINE SELECT date , COUNT(date) FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31 GROUP BY date