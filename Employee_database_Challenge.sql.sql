--deliverable 1
select e.emp_no,e.first_name,e.last_name,ti.title,ti.from_date,
ti.to_date
into retirement_titles
from employees as e
inner join title as ti
on e.emp_no = ti.emp_no
where birth_date BETWEEN '1952-01-01'AND '1955 12-31'
ORDER BY emp_no;




-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


select count(emp_no),title
into retiring_titles
from unique_titles
group by title
order by count(emp_no) desc;

---deliverable2
select distinct on(emp_no)e.emp_no,e.first_name,e.last_name,e.birth_date,
d.from_date,d.to_date,
ti.title
into mentorship_eligibility
from employees as e
inner join dept_emp as d
on e.emp_no =d.emp_no inner join title as ti
on e.emp_no=ti.emp_no
where d.to_date=('9999-01-01') AND e.birth_date BETWEEN '1965-01-01'AND '1965 12-31'
order by emp_no;








