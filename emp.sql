use employee;
create table employee_details
(
emp_id int,
emp_name varchar(10),
emp_dist varchar(10),
emp_ph int,
emp_aadhar int
);
insert into employee_details values(001,"kalai","cbe",12,8642),
(002,"don","cbe",13,8641),(003,"abi","cbe",22,8442),
(004,"kumar","cbe",17,8343),(005,"kanish","madurai",52,7851),
(034,"john","ooty",10,4854),(031,"priya","cbe",62,4442),
(451,"anand","cbe",44,53442),(011,"gopal","cbe",19,1112),
(031,"laskh","cbe",54,1142),(043,"poorna","tirupur",152,7652),
(023,"divith","ooty",456,8642),(032,"alam","cbe",56,8675),
(034,"hema","cbe",77,3554),(057,"jeeva","cbe",78,8642),
(004,"abi","cbe",452,1111),(045,"aki","erode",122,1242),
(031,"dhaanya","cbe",33,8452),(101,"deepa","erode",22,4642),
(054,"archana","madurai",62,3535),(342,"nikita","erode",32,5642),
(045,"ramesh","gobi",02,8642),(151,"raghul","gobi",82,6882),
(041,"ant","theni",72,7742),(651,"arasan","cbe",87,1142),
(461,"subash","kadalur",12,8642),(657,"bob","cbe",234,8342);
select*from employee_details;
truncate table employee_details;
alter table employee_details
add emp_aadhar int;
update employee_details 
set emp_dist="theni" where emp_name="kalai";
delete from employee_details where emp_id=2;
select emp_name, emp_dist from employee_details;
select emp_name, emp_dist from employee_details limit 10;
-- extract top 12 rows of employee_details after skipping 5 rows
select emp_name, emp_dist from employee_details limit 10 offset 5;
select * from employee_details order by emp_id desc;





