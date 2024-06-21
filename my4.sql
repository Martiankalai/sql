use student_marks;
create table marks
( 
 stu_id int,
 stu_name varchar(10),
 stu_maths int,
 stu_science int,
 stu_english int
 );
 insert into marks values
 (01,"john",45,56,67),
 (02,"gopal",65,77,88),
 (03,"kumar",77,88,99);
 select * from marks;
 select stu_maths * stu_science  as stu_total from marks;
 select stu_maths % stu_science  as stu_total from marks;
 select stu_maths / stu_science  as stu_total from marks; 
  select stu_maths + stu_science  as stu_total from marks;
  select stu_maths - stu_science  as stu_total from marks;
  select stu_name ,stu_id from marks where stu_maths >70;
  select stu_name ,stu_id from marks where stu_maths=65;
  select stu_name ,stu_id from marks where stu_maths!=65;
  select stu_name ,stu_id from marks where stu_maths<>65;
  select stu_name ,stu_id from marks where stu_english<70;
  select * from marks where stu_maths > All(select stu_age from stu_info);
  create table stu_info
  (
  stu_age int,
  stu_blood varchar(5)
  );
  insert into stu_info values (18,"A"),(4,"B"),(45,"A"),(34,"B");
  select * from marks where stu_maths > All(select stu_age from stu_info);
  select * from marks where stu_science>stu_maths and stu_id<3;
  select * from marks where stu_science>stu_maths or stu_id<3;
  select * from marks where stu_maths between 60 and 70;
  select * from marks where stu_english in (67);
  select * from marks where not stu_english=67;
  select * from marks where stu_maths > Any(select stu_age from stu_info);
  select count(stu_science) from marks;

  
  
  
  
  
  
   
  
  