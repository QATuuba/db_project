-- get me all emp whose first name starts with C

select *
from EMPLOYEES
where FIRST_NAME like 'C%';

select *
from EMPLOYEES
where FIRST_NAME like 'C____';

--get me 5 letter first namess where the middle char is z
select *
from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first name where second char is u
select *
from EMPLOYEES
where FIRST_NAME like '_u%';

--find me minimum salary
select min(SALARY)
from EMPLOYEES;

--find me maximum salary
select max(SALARY)
from EMPLOYEES;

--find me average salary
select avg(SALARY)
from EMPLOYEES;

--find me average round salary
select round(avg(SALARY),2)
from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;
