-- Retrieve eligible employees for retirement
SELECT  e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
--INTO retiree_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--INTO retiree_titles_unique
FROM retiree_titles
ORDER BY emp_no, to_date DESC;

-- count of employees retiring by title
SELECT COUNT(rtu.title), rtu.title
--INTO retiring_titles
FROM retiree_titles_unique as rtu
GROUP BY rtu.title
ORDER BY count DESC;

-- Retrieve Mentorship Eligibility table
SELECT  DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
--INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;


-- count of employees retiring by title and department
SELECT COUNT(rtu.title), rtu.title, dept.dept_name
--INTO retiring_titles_bydept
FROM retiree_titles_unique as rtu
INNER JOIN dept_emp as de
ON (rtu.emp_no = de.emp_no)
INNER JOIN departments as dept
ON (de.dept_no = dept.dept_no)
GROUP BY rtu.title, dept.dept_name
ORDER BY count DESC;

-- count of eligible employees for mentorship by department
SELECT COUNT(dept.dept_name), dept.dept_name
--INTO retiring_titles
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS dept
ON (de.dept_no = dept.dept_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
GROUP BY dept.dept_name
ORDER BY count DESC;

-- Unique count of retiring employees by department
SELECT COUNT(dept.dept_name), dept.dept_name
INTO retiree_titles_unique_bydept
FROM retiree_titles_unique as rtu
INNER JOIN dept_emp AS de
ON (rtu.emp_no = de.emp_no)
INNER JOIN departments AS dept
ON (de.dept_no = dept.dept_no)
GROUP BY dept.dept_name
ORDER BY count DESC;