--detail of each employees
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON (e.emp_no = s.emp_no)
ORDER BY(e.emp_n
		 

--employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
		 
		 
-- Manager of each department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        emp.last_name,
        emp.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS emp
        ON (dm.emp_no = emp.emp_no);
		 
--department of each employee
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e	
		 INNER JOIN dept_emp AS de
		 ON (e.emp_no = de.emp_no)
		 INNER JOIN departments d
		 ON (de.dept_no = d.dept_no);
		 
		 
--Employee whose last name is Hercules and last name starts with B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
		 AND last_name LIKE 'B%';		
		 
		 
--list of employee of sales department
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

--employees in the Sales and Development departments	 
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;
		 
--frequency count of employee last name in desending order
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
		
		 