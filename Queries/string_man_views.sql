--how can we rename the column that we displayed

select first_name as "given_name", last_name as "surname"
from employees;

--text functions, string mani.
--java, first_name+" "+last name
--in sql concat is ||

select FIRST_NAME||' '||LAST_NAME as "FULL_NAME"
from EMPLOYEES;

--task :
--add @gmail.com and name new column to full_email
select EMAIL||'@gmail.com' as full_email
from EMPLOYEES;

--making all lowercase
select lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

--upper case
select upper(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc ;

--substr(colName,begIndex,NumberOfChar)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials"
from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME as "full_name",
lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

--VIEW
CREATE VIEW EMAILLIST_TUGBA as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME as "FULL_NAME",
lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

select "FULL_NAME"
from EMAILLIST_TUGBA;

--to remove view
drop view EMAILLIST_TUGBA