use employees;

select concat(first_name,' ',last_name)
from employees.employees
where hire_date in (
  select hire_date
  from employees.employees
  where emp_no = 101010
);

select title
from titles
where emp_no in(
  select emp_no
  from employees
  where first_name = 'Aamod'
);

select first_name,last_name
from employees.employees
where emp_no in (
  select emp_no
  from dept_manager
  where to_date = '9999-01-01'
)
and gender = 'F';

select dept_name
from departments
where dept_no in(
  select dm.dept_no
  from dept_manager as dm
  join employees.employees as e
  on dm.emp_no = e.emp_no
  where e.gender = 'F'
  and dm.to_date = '9999-01-01'
);

select e.first_name,e.last_name
from employees.employees as e
join salaries as s
on s.emp_no = e.emp_no
where e.emp_no in (
  select emp_no
  from salaries
)
order by s.salary desc
limit 1;

