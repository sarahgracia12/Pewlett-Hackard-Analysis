--retrieve from employees table
SELECT emp_no, first_name, last_name 
FROM employees
WHERE(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
--retreieve from titles table 
SELECT title, from_date, to_date
FROM titles
WHERE from_date BETWEEN '1985-01-1' AND '1988-12-31'
--Creating a new table for employees
SELECT emp_no, first_name, last_name
INTO employees_ri 
FROM employees
WHERE(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
--Creating a new table for titles 
SELECT title, from_date, to_date
INTO ri_titles
FROM titles
WHERE from_date BETWEEN '1985-01-1' AND '1988-12-31'
--Check employee_ri
SELECT * FROM employees_ri;
--Check ri_titles
SELECT * FROM ri_titles;
--Joing the two tables 
DROP TABLE ri_titles;
SELECT emp_no, first_name, last_name
INTO ri_titles
FROM employees_ri
WHERE(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND(hire_date BETWEEN '1985-01-01' AND '1988-12-31');