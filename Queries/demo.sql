SELECT * FROM COUNTRIES;

select * from employees;
-- reads all column from employees table

select * from departments;
-- reads all column from departments table

select first_name from employees;
--get only firstname from employees

--display city names
select city from locations;

--get me first-name, last_name and salary

select first_name, last_name, salary from employees;

--get me street address and postal code

select street_address, postal_code from locations;

select distinct first_name from employees;
--removes duplicated
