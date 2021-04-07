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
