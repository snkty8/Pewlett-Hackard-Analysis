--Deliverable Part 1

--1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
--2. Retrieve the title, from_date, and to_date columns from the Titles table
--3. Create a new table using the INTO clause.
--4. Join both tables on the primary key.
--5. Filter the data on the birth_date column to retrieve the employees who were
--born between 1952 and 1955. Then, order by the employee number.

SELECT emp_no, first_name, last_name
INTO emp_challenge
FROM Employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');
SELECT title, from_date, to_date
FROM titles;


SELECT emp_challenge.emp_no,
     emp_challenge.first_name,
     emp_challenge.last_name,
     titles.title,
	 titles.from_date,
	 titles.to_date
INTO retirement_titles
FROM emp_challenge
INNER JOIN titles
ON emp_challenge.emp_no = titles.emp_no
ORDER BY emp_no;

--6. Export the Retirement Titles table from the previous step as retirement_titles.csv
--and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

--9. Retrieve the employee number, first and last name, and title columns 
--from the Retirement Titles table.

SELECT * FROM retirement_titles;

SELECT emp_no, first_name, last_name, title
FROM retirement_titles;

--10. Use the DISTINCT ON statement to retrieve the first occurrence of the 
--employee number for each set of rows defined by the ON () clause.

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
FROM retirement_titles
ORDER BY emp_no, emp_no DESC;

--11. Create a Unique Titles table using the INTO clause.

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

--15. Write another query in the Employee_Database_challenge.sql file to retrieve 
--the number of employees by their most recent job title who are about to retire.

--16. First, retrieve the number of titles from the Unique Titles table.
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY COUNT(title) DESC;


-- Deliverable Part 2

-- In the Employee_Database_challenge.sql file, write a query to create 
--a Mentorship Eligibility table that holds the employees who are eligible
--to participate in a mentorship program.

--1. Retrieve the emp_no, first_name, last_name, and birth_date columns
--from the Employees table.

		-- Use a DISTINCT ON statement to retrieve the first occurrence of the
		--employee number for each set of rows defined by the ON () clause.
		--Create a new table using the INTO clause.
SELECT DISTINCT ON(e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
--2. Retrieve the from_date and to_date columns from the Department Employee table.
de.from_date,
de.to_date,
--3. Retrieve the title column from the Titles table.
t.title
--5. Create a new table using the INTO clause.
INTO mentorship_eligibilty
FROM employees AS e
--6. Join the Employees and the Department Employee tables on the primary key.
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
--7. Join the Employees and the Titles tables on the primary key.
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
--8. Filter the data on the to_date column to get current employees whose birth dates 
--are between January 1, 1965 and December 31, 1965.
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--9. Order the table by the employee number.
ORDER BY emp_no;

SELECT * FROM mentorship_eligibilty;
