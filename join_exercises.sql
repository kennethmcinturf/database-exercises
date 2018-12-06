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

select concat(e.first_name,' ',e.last_name)
from employees.employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
where dm.dept_no in (
  select dept_no
  from departments
  where dept_name = 'Sales'
)
and dm.to_date = '9999-01-01';


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

select concat(e.first_name,' ',e.last_name)
from employees.employees as e
join dept_emp as de
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'sales';

select e.birth_date
from employees.employees as e
where e.birth_date in (
  select count(birth_date)
  from employees
  order by count(birth_date)
)
limit 1;

select avg(s.salary)
from salaries as s
join dept_manager as dm
on dm.emp_no = s.emp_no
where dm.to_date = '9999-01-01';

select d.dept_name, avg(s.salary)
from salaries as s
join dept_emp as de
on de.emp_no = s.emp_no
join departments as d
on d.dept_no = de.dept_no
group by d.dept_name;

select avg(s.salary)
from salaries as s
where from_date like '%198%'
and to_date like '%198%';

select d.dept_name, avg(s.salary)
from salaries as s
join employees.dept_emp as de
on de.emp_no = s.emp_no
join departments as d
on d.dept_no = de.dept_no
where s.from_date like '%198%'
and s.to_date like '%198%'
group by d.dept_name;