use mittest;
create table library
(
 book_id INT,
 book_name VARCHAR(10),
 author_name VARCHAR(10),
 date_of_publish DATE check(date_of_publish <="2020-01-10"),
 price INT default 350,
 genre varchar(10)
);

-- 2 Question
use farmers_set;
select distinct count(vendor_id) 
from vendor_inventory;

-- 3 Question
select * from vendor_inventory;
select sum(original_price) as sum_price
 from vendor_inventory;
 
select original_price 
from vendor_inventory 
order by original_price desc 
limit 20;


-- 4 Question
select * from vendor;
select * from vendor
 where vendor_owner_first_name like "_a%";
 
 -- 5 Question
 select * from customer_purchases;
 select avg(cost_to_customer_per_qty) as avg_amt
 from customer_purchases;



