use myemp;
create table employee_details
(
emp_id int,
emp_name varchar(10),
emp_dist varchar(10),
emp_ad int,
emp_aadhar int
);
insert into employee_details values(001,"kalai","cbe",12,8642),
(002,"don","cbe",13,8641),(003,"abi","cbe",22,8442),
(004,"kumar","cbe",17,8343),(005,"kanish","madurai",52,7851),
(034,"john","ooty",10,4854),(031,"priya","cbe",62,4442),
(451,"anand","cbe",44,53442),(011,"gopal","cbe",19,1112),
(031,"laskh","cbe",54,1142),(043,"poorna","tirupur",152,7652),
(023,"divith","ooty",456,8642),(001,"alam","cbe",56,8675),
(034,"hema","cbe",77,3554),(057,"jeeva","cbe",78,8642),
(004,"abi","cbe",452,1111),(045,"aki","erode",122,1242),
(031,"dhaanya","cbe",33,8452),(101,"deepa","erode",22,4642),
(054,"archana","madurai",62,3535),(342,"nikita","erode",32,5642),
(045,"ramesh","gobi",02,8642),(151,"raghul","gobi",82,6882),
(041,"ant","theni",72,7742),(651,"arasan","cbe",87,1142),
(461,"subash","kadalur",12,8642),(657,"bob","cbe",234,8342);
select*from employee_details;
-- select*from employee_details where emp_dist="ooty";
select*from employee_details order by emp_name;
select emp_id,emp_name,emp_ad*2 as emp_admission from employee_details;
select * from employee_details where emp_aadhar > 8888;
select * from employee_details where emp_dist like "%e";
-- end with cbe
select* from employee_details where emp_dist regexp "cbe$";
-- start with cbe
select* from employee_details where emp_dist regexp "^cbe";
-- end with specific letters
select* from employee_details where emp_dist regexp "[n]i";
select* from employee_details where emp_dist regexp "[a-b]i";
-- contains the letters
select* from employee_details where emp_dist regexp "oo";
truncate table employee_details;
select emp_id+emp_ad as emp_sum from employee_details;
select emp_id-emp_ad as emp_sum from employee_details;


