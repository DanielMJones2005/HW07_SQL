# HW Unit 07 SQL
## Employee Database: A Mystery in Two Parts

![alt text](https://github.com/DanielMJones2005/HW07_SQL/blob/master/Img/sql.png)

## Files
* [Data](https://github.com/DanielMJones2005/HW07_SQL/tree/master/Data)
    * departments.csv
    * dept_emp.csv
    * dept_manager.csv
    * employees.csv
    * salaries.csv
    * titles.csv
* [Dev_Python_Files](https://github.com/DanielMJones2005/HW07_SQL/tree/master/Dev_Python_Files)
    * HW07-EmployeeDB.Bonus.v2.ipynb
    * HW07_SQL_Data_Analysis.ipynb
* [Docs](https://github.com/DanielMJones2005/HW07_SQL/tree/master/Docs)
    * HW07_SQL_ERD_DBD.pdf
      * This is PDF table/chart version of the Entity Relationship Diagram (ERD)
* [Img](https://github.com/DanielMJones2005/HW07_SQL/tree/master/Img)
    * AvgSalTitle.png
    * HW07_SQL_ERP_DBD.png
    * sql.png
* [SQL_Files](https://github.com/DanielMJones2005/HW07_SQL/tree/master/SQL_Files)
    * HW07_CreatePrimForKeys.sql
    * HW07_CreateTables.sql
    * HW07_Questions.sql
    * QuickDBD-Free Diagram.sql
       * This is a Postgresql SQL version
* [HW07-EmployeeDB.DMJ.Final.ipynb](https://github.com/DanielMJones2005/HW07_SQL/blob/master/HW07-EmployeeDB.DMJ.Final.ipynb)

## Data Modeling
- Inspect the CSVs and sketch out an ERD of the tables

- Inspection:
  - Used Python file [HW07_SQL_Data_Analysis](https://github.com/DanielMJones2005/HW07_SQL/blob/master/Dev_Python_Files/HW07_SQL_Data_Analysis.ipynb)
  to inspect data
  * Notes:
    * While Dept_Mgr has historically had only 1 employee per dept at a time, 
  it could be possible to have an employee be the manager of a dept again
      * With this in mind, the Dept_Mgr emp_no field was set up as a many to one relationship with the Employees emp_no field
    * While salaries table has same number of employees as in the employees table, 
  could be possible for an employee to have different salaries throughout employment
      * With this in mind, the Salaries emp_no field was set up as a monay to one relationship with the Employees emp_no field

- Sketch of ERD:
![alt text](https://github.com/DanielMJones2005/HW07_SQL/blob/master/Img/HW07_SQL_ERP_DBD.png)

## Data Engineering
- Use the information you have to create a table schema for each of the six CSV files 
  * Remember to specify data types, primary keys, foreign keys, and other constraints
  * Import each CSV file into the corresponding SQL table
      * The SQL queries in the file [HW07_CreateTables.sql](https://github.com/DanielMJones2005/HW07_SQL/blob/master/SQL_Files/HW07_CreateTables.sql)
        created the respective SQL tables
      * The SQL queries in the file [HW07_CreatePrimForKeys.sql](https://github.com/DanielMJones2005/HW07_SQL/blob/master/SQL_Files/HW07_CreatePrimForKeys.sql)
        created the primary and foreign keys
        
        
## Data Analysis
- The SQL queries in the file [HW07_Questions.sql](https://github.com/DanielMJones2005/HW07_SQL/blob/master/SQL_Files/HW07_Questions.sql)
answer|respond to the following questions|requests 
1. List the following details of each employee: employee number, last name, first name, gender, and salary
2. List employees who were hired in 1986
3. List the manager of each department with the following information: 
    * department number, department name, the manager's employee number, last name, first name, and start and end employment dates
    * The end employment date was not exactly clear from the data, so also added dpt_mgr dates
4. List the department of each employee with the following information: 
   * employee number, last name, first name, and department name
   * Since an employee could be part of one department for one specified time frame
   and be part of another department in another time frame, also added the dept from date and the dept to date
5. List all employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including 
    * their employee number, last name, first name, and department name
   * Since an employee could be part of one department for one specified time frame
   and be part of another department in another time frame, also added the dept from date and the dept to date
   also added from date to date
7. List all employees in the Sales and Development departments, 
    * including their employee number, last name, first name, and department name
    * Since an employee could be part of one department for one specified time frame
   and be part of another department in another time frame, also added the dept from date and the dept to date
   also added from date to date
8. In descending order, list the frequency count of employee last names, 
   * i.e., how many employees share each last name


## Bonus (Optional)
1. Import the SQL database into Pandas
  * The Python file [HW07-EmployeeDB.DMJ.Final.ipynb](https://github.com/DanielMJones2005/HW07_SQL/blob/master/HW07-EmployeeDB.DMJ.Final.ipynb)
  was used to import tables|data from the Postgresql database, analyze|format the data, and then to create a bar chart of
  average salary by title
2. Create a bar chart of average salary by title

![alt text](https://github.com/DanielMJones2005/HW07_SQL/blob/master/Img/AvgSalTitle.png)

3. employee ID number is 499942:
    * first_name: April
    * last_name: Foolsday
   * gender: F



