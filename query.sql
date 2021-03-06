--List employee details number, last name, first name, sex, and salary.

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees AS emp
	LEFT JOIN salaries AS sal ON sal.emp_no = emp.emp_no
ORDER BY emp.last_name ASC, emp.first_name ASC;

---2.List employees hired in 1986

SELECT  last_name, first_name, hiring_date
FROM employees
WHERE hiring_date BETWEEN '01-01-1986' AND '31-12-1986';

-- list Manager detials with dept name and number

SELECT  dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager AS dm
    INNER JOIN department AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);
		
---list employee details with department details
--employee number, last name, first name, and department name
SELECT de.emp_no, de.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_emp AS de
	INNER JOIN department AS d
	 ON (de.dept_no = d.dept_no)
	INNER JOIN employees AS e
	 ON (de.emp_no = e.emp_no);
	 
---List names and sex for employees
---first name is "Hercules" and last names begin with "B."
	
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%'
ORDER BY first_name ASC;

--List employees in Sales department, 
--including their employee number, last name, first name, and department name.

SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN department AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- Employees in Sales and Development departments
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN department AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

-- The frequency of employee last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



	
	






