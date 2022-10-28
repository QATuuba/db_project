-- get me unique job_ids
select distinct JOB_ID from EMPLOYEES;

--get me average salary for IT_PROG
select avg(salary)
from employees
where job_id = 'IT_PROG';

select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

--get me job_ids where their salary is more than 5K
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;