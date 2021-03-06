-----Data Analysis-----

--1. List the following details of each employee: employee number, last name, first name, 
--sex, and salary.
SELECT * FROM employees;

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s --Inner Join
ON e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d 
JOIN dept_manager dm   --Inner Join
ON d.dept_no = dm.dept_no
JOIN employees e       --Inner Join
ON dm.emp_no = e.emp_no;

--4. List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de    --Inner Join
ON de.emp_no = e.emp_no
JOIN departments d  --Inner Join
ON d.dept_no = de.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de     --Inner Join
ON  e.emp_no = de.emp_no 
JOIN departments d   --Inner Join
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de    --Inner Join
ON  e.emp_no = de.emp_no 
JOIN departments d  --Inner Join
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
SELECT e.last_name, COUNT(e.last_name) AS "Count Of Shared Employee Last Names"
FROM employees e
GROUP BY e.last_name
ORDER BY "Count Of Shared Employee Last Names" DESC;

--Epilogue: Evidence in hand, you march into your boss's office and present the 
--visualization. With a sly grin, your boss thanks you for your work. On your way
--out of the office, you hear the words, "Search your ID number." You look down at 
--your badge to see that your employee ID number is 499942.
SELECT e.*, s.salary
FROM salaries s
JOIN employees e
ON e.emp_no = s.emp_no
WHERE e.emp_no = 499942;
