use employees;

SELECT distinct title from titles;

SELECT distinct last_name,first_name from employees where last_name like 'E%'
and last_name like '%e';

SELECT last_name, count(*) from employees where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

SELECT gender, count(gender) from employees where first_name IN ('Irena','Vidya','Maya')
group by gender;