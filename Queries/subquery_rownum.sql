--how to find employees information of who is making highest salary in the company
select * from employees
order by salary desc;

-- get me the highest salary
select max(SALARY)
from EMPLOYEES;

select *
from EMPLOYEES
where SALARY=24000;

select *
from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);

--finding second highest salary
--get highest salary first
select max(SALARY)
from EMPLOYEES;

select max(SALARY)
from EMPLOYEES
where SALARY < 24000;

--one shot combining two queries
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

-- employee information of who is making second highest salary
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES where SALARY < (select max(SALARY) from EMPLOYEES));

------

select *
from EMPLOYEES
order by SALARY desc ;

select *
from EMPLOYEES
where ROWNUM < 11;

--list the employees who is making top 10 salary
select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc ;

--order all employees based on salary high to low then display only first 10 results

select *
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 11;

select *
from (select * from EMPLOYEES order by SALARY asc)
where ROWNUM < 11;

select *
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

