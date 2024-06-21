SELECT * FROM farmers_set.`customer (1)`;
select customer_id,customer_first_name from customer_table limit 15;
select customer_id,customer_first_name from customer_table limit 15 offset 2;
select * from customer_table order by customer_first_name;
select * from customer_table order by customer_id desc;
select * from customer_table where customer_zip=22801;
select * from customer_table where customer_zip!=22801;
select * from customer_table where customer_zip!=22801 and customer_id>10;
select count(*) as customer_id from customer_table;
select * from product;
select * from product where product_size in ("medium","large");
select * from market_date_info;
select market_date,market_start_time from market_date_info where market_date<='2019-05-05';
  