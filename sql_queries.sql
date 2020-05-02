

--1
SELECT employees.emp_no, last_name, first_name, gender, salaries.salary
FROM
employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no; 

--2
SELECT emp_no, 
last_name, 
first_name, 
gender,
hire_date
FROM
employees
WHERE
EXTRACT (YEAR from hire_date) = '1986';

SELECT * FROM dept_manager;

--3
SELECT 
d.dept_no, d.dept_name, 
dm.emp_no, e.last_name, e.first_name, 
dm.from_date, dm.to_date
FROM employees AS e
	JOIN dept_manager AS dm
	ON (e.emp_no = dm.emp_no)
		JOIN departments AS d
		ON (dm.dept_no = d.dept_no);
--4
SELECT
e.emp_no, e.last_name,e.first_name,d.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN departments AS d
		ON (de.dept_no = d.dept_no);
--5
SELECT * 
FROM employees
WHERE
first_name = 'Hercules'
AND
last_name LIKE 'B%'; 


--6
SELECT * FROM departments;

SELECT
e.emp_no, e.last_name,e.first_name,d.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE 
d.dept_name = 'Sales';

--7
SELECT
e.emp_no, e.last_name,e.first_name,d.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE 
d.dept_name = 'Sales'
OR
d.dept_name = 'Development';

--8
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM
employees
GROUP BY
last_name
ORDER BY
"Frequency" DESC; 
