--Deliverable 1
--Create Retirement_titles table
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title, 
	t.from_date, 
	t.to_date
INTO retirement_titles
FROM titles as t
JOIN employees as e 
ON t.emp_no = e.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no

--Create unique_titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


--Create retireing_titles table
SELECT COUNT(title), title
INTO retiring_titles
from unique_titles
group by title
order by COUNT(title)desc


--Deliverable 2
SELECT DISTINCT ON (t.emp_no)
e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date, 
de.from_date, 
de.to_date, 
t.title
INTO mentorship_eligibility
FROM employees AS e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY t.emp_no