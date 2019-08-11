DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_mgr;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dpt_no character varying(4) NOT NULL,
  dpt_name character varying(20) NOT NULL
);
  
CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dpt_no character varying(4) NOT NULL,
  from_date date NOT Null,
  to_date date NOT Null
);

CREATE TABLE dept_mgr (
  dpt_no character varying(4) NOT NULL,
  emp_no integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);

CREATE TABLE employees (
  emp_no integer NOT NUll,
  birth_date date NOT NULL,
  first_name character varying(100) NOT NULL,
  last_name character varying(100) NOT NULL,
  gender character varying(1) NOT NULL,
  hire_date date NOT NULL
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary float NOT NULL,
  from_date date NOT NULL,
  to_date date NOT Null
);

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying(50) NOT NUll,
  from_date date NOT NULL,
  to_date date NOT NULL
);

SELECT * FROM departments
SELECT * FROM dept_emp;
SELECT * FROM dept_mgr;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;






 