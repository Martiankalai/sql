select ascii('A');
SELECT CHAR_LENGTH('good data scientist');
select concat('good',' ','job');
select concat(vendor_owner_first_name,' ',vendor_owner_last_name)as full_name from vendor;
select instr('life is good','is');-- select the position
select lower('DGSDGGDGGSdfsfs');
select repeat('good',5);
select replace('data is life','life','world');
select ucase(vendor_name) 
from vendor;
select reverse('good')as reversed;
select concat_ws('_','data','is','life');

-- numeric functions

select abs(-45.6);
select ceil(56.7);
select ceil(56.2);
select 63 div 9;
select floor(34.6);
select greatest(4,5,76,45,3);
select greatest(quantity,original_price)
from vendor_inventory;
select least(quantity,original_price)
from vendor_inventory;

select ln(10);
select log10(1);
select log2(1);
select power(9,2);
select sqrt(45);
select round(34.56565666565,2);


select* from vendor_inventory;
select round(quantity,1) from vendor_inventory;

