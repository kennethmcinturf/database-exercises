use employees;

SELECT concat(emp_no,' - ',last_name,", ",first_name) as full_name,
birth_date as DOB
from employees
limit 10;


select title,count(title)from titles
group by title
limit 3;

select emp_no from titles
where title = 'Senior Engineer'
limit 1;

select * from titles;

select from_date, count(from_date)
from titles
where title = 'staff'
group by from_date
order by count(from_date) desc;

select emp_no
from titles
where title = 'Engineer'
order by emp_no desc;

select concat(first_name,' ',last_name)
from employees.employees
where gender = 'F'
ORDER by hire_date desc;

select birth_date, COUNT(birth_date)
from employees.employees
where gender = 'f'
group by birth_date
order by COUNT(birth_date) desc ;

select hire_date, Count(hire_date)
from employees.employees
where gender = 'F'
group by hire_date
order by Count(hire_date) desc
limit 1;

select last_name
from employees.employees
where birth_date = '1952-03-08'
order by length(last_name) desc;

