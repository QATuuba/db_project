--get me info who is working as IT_PROG or SA_REP

select *
from employees
where job_id in ('IT_PROG', 'SA_REP');

--how many employee working as IT_PROG or SA_REP
select count(*)
from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employees making more than 8000
select count(*)
from EMPLOYEES
where SALARY > 8000;

--how many unique first names we have
select count(distinct FIRST_NAME)
from EMPLOYEES;

--get me all employees information based on who is making more salary to low salary
select *
from EMPLOYEES
order by SALARY desc;

--get me all emp info order by alphabetical based on first_name
select *
from EMPLOYEES
order by FIRST_NAME asc ;

--default order type is asc if you don't specify after column name



