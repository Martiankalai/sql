use farmers_set;
select * from vendor;
select * from vendor_booth_assignments;
select * from vendor_inventory;
select * from customer_table;
select * from customer_purchases;
select extract(hour from transaction_time) from customer_purchases; 
select * from customer_purchases order by customer_id;
select * from customer_purchases
 where market_date between "2019-07-13" and "2019-07-31"
 order by customer_id;
select * from customer_table;
select * from customer_table where customer_first_name like "Ja%";
select customer_id,vendor_id,min(cost_to_customer_per_qty) as min_qty
from customer_purchases
group by customer_id,vendor_id;



