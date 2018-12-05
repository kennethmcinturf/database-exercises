use employees;
select * from departments;
select * from dept_manager;

select d.dept_name as 'Department Name', CONCAT(e.first_name,' ',e.last_name)
from employees.employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01';

select d.dept_name as 'Department Name', CONCAT(e.first_name,' ',e.last_name)
from employees.employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
and e.gender = "F";


select t.title as 'Title', COUNT(t.title) as 'Count'
from titles as t
join dept_emp as de
on de.emp_no = t.emp_no
where de.dept_no = 'd009'
group by t.title;

select d.dept_name as 'Department Name', CONCAT(e.first_name,' ',e.last_name) as 'Name', s.salary as 'Salary'
from salaries as s
join employees.employees as e
on e.emp_no = s.emp_no
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
and s.to_date = '9999-01-01';

select CONCAT(e.first_name,' ',e.last_name) as 'Employee Name', d.dept_name as 'Department Name',
CONCAT(em.first_name,' ',em.last_name) as 'Manager Name'
from employees.employees as e
join dept_emp as de
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees.employees as em
on em.emp_no = dm.emp_no
where dm.to_date = '9999-01-01'
and de.to_date = '9999-01-01';

select salary
from salaries
order by salary desc
limit 2;

select concat(e.first_name,' ',e.last_name), t.title
from employees.employees as e
join dept_emp as de
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
join titles as t
on t.emp_no = de.emp_no
where d.dept_name = 'customer service'
and t.title = 'senior engineer';

