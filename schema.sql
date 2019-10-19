DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS title;

CREATE TABLE IF NOT EXISTS departments (dept_no VARCHAR(4), 
										dept_name VARCHAR(255));
CREATE TABLE IF NOT EXISTS dept_emp (emp_no INT, 
									 dept_no VARCHAR(4), 
									 from_date DATE, 
									 to_date DATE);
CREATE TABLE IF NOT EXISTS dept_manager (dept_no VARCHAR(4), 
										 emp_no INT, 
										 from_date DATE, 
										 to_date DATE);
CREATE TABLE IF NOT EXISTS employee (emp_no INT, 
									 birth_date DATE, 
									 first_name VARCHAR, 
									 last_name VARCHAR, 
									 gender VARCHAR(1), 
									 hire_date DATE);
CREATE TABLE IF NOT EXISTS salary (emp_no INT, 
								   salary INT, 
								   from_date DATE, 
								   to_date DATE);
CREATE TABLE IF NOT EXISTS title (emp_no INT, 
								  title VARCHAR(255), 
								  from_date DATE, 
								  to_date DATE);
