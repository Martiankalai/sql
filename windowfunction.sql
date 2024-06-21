use farmers_set;
select variance(original_price)
from vendor_inventory;
select stddev(original_price)
from vendor_inventory;
select * from customer_purchases;
select *,first_value(cost_to_customer_per_qty)over(order by transaction_time) as first_cost
from customer_purchases;
select *,first_value(cost_to_customer_per_qty)over(partition by product_id order by transaction_time) as first_cost
from customer_purchases;


select *,first_value(cost_to_customer_per_qty)over(partition by product_id order by transaction_time) as first_cost,
last_value(cost_to_customer_per_qty)over(partition by product_id order by transaction_time) as last_cost
from customer_purchases; -- gives you highest and lowest cost of a item

select *,last_value(cost_to_customer_per_qty)over(order by transaction_time) as last_cost
from customer_purchases;

select *,lag(cost_to_customer_per_qty)over(order by transaction_time) as lag_cost
from customer_purchases;

select *,lead(cost_to_customer_per_qty)over(order by transaction_time) as lead_cost
from customer_purchases;

select *,lag(cost_to_customer_per_qty,2)over(order by transaction_time) as lag_cost
from customer_purchases; -- skip 2 values

select *,last_value(cost_to_customer_per_qty)over(partition by product_id order by transaction_time) as last_cost
from customer_purchases;

select *,row_number() over(order by quantity) as row_no
from customer_purchases;

select *,row_number() over(partition by product_id order by quantity) as row_no
from customer_purchases;

select *,row_number() over(partition by product_id order by quantity desc) as row_no
from customer_purchases;-- arrange in desc order

with late_d as(
select *,
row_number() over(partition by product_id order by quantity desc) as row_no
from customer_purchases)
select * 
from late_d
where row_no=2;

select *,
sum()















