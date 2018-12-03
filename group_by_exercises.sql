use titles;

SELECT distinct title from titles;

SELECT distinct last_name,first_name from employees where last_name like 'E%'
and last_name like '%e';

SELECT first_name, last_name, count(last_name) from employees where last_name like '%q%'
and last_name not like '%qu%'
group by last_name, first_name;

SELECT gender, count(gender) from employees where first_name IN ('Irena','Vidya','Maya')
group by gender;