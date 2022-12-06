

## gender FROM EMPLOYEES, 
## dept_no FROM DEPT_EMP,  to_date FROM DEPT_EMP, 
## dept_no FROM DEPTARTMENTS, 
## DEPT_NAME FROM DEPARTMENTS;


SELECT e.gender, e.emp_no, de.dept_no, d.dept_name, de.to_date
FROM employees AS e
JOIN dept_emp AS de
	USING (emp_no)
JOIN departments as d
	USING (dept_no)
WHERE de.to_date = '9999-01-01' AND d.dept_name IN ('Sales','Marketing')
GROUP BY e.gender, e.emp_no, de.dept_no, d.dept_name, de.to_date
LIMIT 10;




SELECT title FROM titles
ORDER BY  title ASC;

# gender FROM EMPLOYEES, emp_no FROM EMPLOYEES,
# title FROM TITLES = 'MANAGER'

SELECT e.gender, e.emp_no, t.title, t.to_date
FROM employees AS e
JOIN titles AS t
	USING (emp_no)
WHERE t.to_date = '9999-01-01' AND t.title like '%mana%'
GROUP BY e.gender, e.emp_no, t.title, t.to_date
LIMIT 10;