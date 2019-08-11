SELECT *
FROM departments

SELECT *
FROM dept_emp

SELECT *
FROM dept_mgr

SELECT *
FROM employees

SELECT *
FROM salaries

SELECT *
FROM titles

--



SELECT COUNT(*) FROM employees

-- 1. List the following details of each employee: 
	-- employee number, last name, first name, gender, and salary.
CREATE VIEW emp_salaries AS
SELECT employees.emp_no, employees.last_name, 
	employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT OUTER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT COUNT(*) FROM emp_salaries
	
SELECT *
FROM emp_salaries
	
	
-- 2. List employees who were hired in 1986.
CREATE VIEW emp_1986 AS
SELECT *
FROM employees
WHERE
hire_date >= '1986-01-01' and 
hire_date <= '1986-12-31'

SELECT *
FROM emp_1986


-- 3. List the manager of each department with the 
	-- following information: department number, department name, 
	-- the manager's employee number, last name, first name, and start and end employment dates.
CREATE VIEW manager_info AS
SELECT dept_mgr.dpt_no, departments.dpt_name, dept_mgr.emp_no, 
	employees.last_name, employees.first_name, employees.hire_date,
	salaries.to_date as salary_to_date, dept_mgr.from_date as dept_mgr_from_date,
	dept_mgr.to_date as dept_mgt_to_date
-- also added dpt_mgr dates
FROM dept_mgr
LEFT OUTER JOIN departments
ON dept_mgr.dpt_no = departments.dpt_no
LEFT OUTER JOIN employees
ON dept_mgr.emp_no = employees.emp_no
LEFT OUTER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT *
FROM manager_info


-- 4. List the department of each employee with the following information: 
	-- employee number, last name, first name, and department name.
CREATE VIEW dpt_each_emp AS
SELECT employees.emp_no, employees.last_name, employees.first_name, 
	departments.dpt_name, dept_emp.from_date as dept_from_date, 
	dept_emp.to_date  as dept_to_date
-- also added from date to date
FROM employees
LEFT OUTER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT OUTER JOIN departments
ON dept_emp.dpt_no = departments.dpt_no;

SELECT *
FROM dpt_each_emp

SELECT COUNT(*) FROM dpt_each_emp

	
-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
CREATE VIEW herc_b AS
SELECT *
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

SELECT *
FROM herc_b


-- 6. List all employees in the Sales department, including 
	-- their employee number, last name, first name, and department name.
CREATE VIEW sales_emp AS
SELECT employees.emp_no, employees.last_name, employees.first_name, 
	departments.dpt_name, dept_emp.from_date as dept_from_date, 
	dept_emp.to_date  as dept_to_date
-- also added from date to date
FROM employees
LEFT OUTER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT OUTER JOIN departments
ON dept_emp.dpt_no = departments.dpt_no
WHERE departments.dpt_name = 'Sales';

SELECT *
FROM sales_emp


-- 7.List all employees in the Sales and Development departments, 
	-- including their employee number, last name, first name, and department name.
CREATE VIEW sales_dev_emp AS
SELECT employees.emp_no, employees.last_name, employees.first_name, 
	departments.dpt_name, dept_emp.from_date as dept_from_date, 
	dept_emp.to_date  as dept_to_date
-- also added from date to date
FROM employees
LEFT OUTER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT OUTER JOIN departments
ON dept_emp.dpt_no = departments.dpt_no
WHERE departments.dpt_name = 'Sales' OR departments.dpt_name = 'Development';

SELECT *
FROM sales_dev_emp


-- 8. In descending order, list the frequency count of employee last names, 
	-- i.e., how many employees share each last name.
CREATE VIEW last_name_freq AS
SELECT last_name,
COUNT(last_name) as last_name_freq
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;	
	
SELECT *
FROM last_name_freq
	
	
	
-- Delete Views
DROP VIEW emp_salaries;
DROP VIEW emp_1986;
DROP VIEW manager_info;
DROP VIEW dpt_each_emp;
DROP VIEW herc_b;
DROP VIEW sales_emp;
DROP VIEW sales_dev_emp;
DROP VIEW last_name_freq;

