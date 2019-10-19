-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employee e
JOIN salary s
ON e.emp_no = s.emp_no;

-- List employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date FROM employee
WHERE EXTRACT(year FROM hire_date) = '1986';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.to_date, dm.from_date
FROM dept_manager dm
JOIN departments d ON d.dept_no = dm.dept_no
JOIN employee e ON e.emp_no = dm.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON d.dept_no = de.dept_no
JOIN employee e ON e.emp_no = de.emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON d.dept_no = de.dept_no
JOIN employee e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON d.dept_no = de.dept_no
JOIN employee e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employee
GROUP BY last_name
ORDER BY count DESC;
