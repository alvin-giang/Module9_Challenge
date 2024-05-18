--List the employee number, last name, first name, sex, and salary of each employee.
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salaries.salary
FROM employee
INNER JOIN salaries ON employee.emp_no = salaries.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date LIKE '%1986';


--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employee.first_name,
employee.last_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employee ON dept_manager.emp_no = employee.emp_no;


--List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name.
SELECT dept_emp.dept_no, dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employee ON dept_emp.emp_no = employee.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;


--List the first name, last name, and sex of each employee whose first name is Hercules and 
--whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' OR last_name LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, 
--and first name.
SELECT dept_emp.emp_no, employee.last_name, employee.first_name
FROM dept_emp
INNER JOIN employee ON dept_emp.emp_no = employee.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';


--List each employee in the Sales and Development departments, including their employee number,
--last name, first name, and department name.
SELECT dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employee ON dept_emp.emp_no = employee.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name IN ('Sales','Development');


--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS last_name_count
FROM employee
GROUP BY last_name
ORDER BY last_name_count DESC;
