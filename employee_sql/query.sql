-- List the following details of each employee:
-- employee number, last name, first name, gender, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

-- List employees who were hired in 1986
SELECT *
FROM employees
WHERE SUBSTRING(hire_date, 1, 4) = '1986'; 

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date 
FROM departments d
INNER JOIN dept_manager m
      ON d.dept_no=m.dept_no
INNER JOIN employees e
      ON m.emp_no=e.emp_no;
	  
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
	ON de.emp_no=e.emp_no
INNER JOIN departments d
	ON de.dept_no=d.dept_no;
	
-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE SUBSTRING(last_name, 1, 1) = 'B'
AND first_name = 'Hercules';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no=e.emp_no
INNER JOIN departments d
ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no=e.emp_no
INNER JOIN departments d
ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Developent';


-- In descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name;

-- My ID number. lol
SELECT *
FROM employees
WHERE emp_no=499942;

