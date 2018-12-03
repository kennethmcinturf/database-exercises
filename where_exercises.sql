USE employees;

SELECT * from employees where first_name IN ('Irena','Vidya','Maya')
and gender = 'M';

SELECT * from employees where last_name like 'E%'
and last_name like '%e';

SELECT * from employees where hire_date between '1990-01-01' and '1999-12-31';

SELECT * from employees where hire_date like '%12-25%';

SELECT * from employees where last_name like '%q%';

SELECT * from employees where hire_date between '1990-01-01' and '1999-12-31'
and hire_date like '%12-25%';

SELECT * from employees where last_name like '%q%'
and last_name not like '%qu%';