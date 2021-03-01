SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- Employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no=s.emp_no;

-- First name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date::text LIKE '1986%';

-- Manager of each department with: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no=dm.dept_no
LEFT JOIN employees AS e
ON dm.emp_no=e.emp_no;

-- Department of each employee with: employee number, last name, first name, and department name.
CREATE VIEW emp_dept AS -- using this query for another question further on
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no=de.emp_no
Left JOIN departments AS d
ON de.dept_no=d.dept_no;

-- First name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

-- All employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT * FROM emp_dept
WHERE dept_name = 'Sales';

-- All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM emp_dept
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- Frequency count of employee last names, i.e., how many employees share each last name in descending order
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT DESC;





