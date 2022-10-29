select * from customer;

select * from address;

--outer and inner come by default

--inner join
select first_name,last_name,address,phone
from customer join address
on customer.address_id = address.address_id;

--left outer join
select first_name,last_name,c.address_id,address,phone
from customer c left join address a
on c.address_id = a.address_id;

--right outer join
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a
on c.address_id = a.address_id;

--full outer join
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a
on c.address_id = a.address_id;