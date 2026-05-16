Create database collegee; 
use collegee; 

create table student (
  id int primary key , 
  name varchar(50)
); 
insert into student (id,name) 
values 
(101,"Adam"),(102,"Bob"),(103,"casey");   

create table course (
   id int primary key , 
   course varchar(50) 
);  

insert into course (id , course) 
values 
(102,"English"),
(105,"Math"),
(106,"Science"),
(104,"Compuer science");

# inner join 

#  using alias 
# like this student as s 


select *  
from student as s 
inner join course  as c
on s.id = c.id; 

# left join  

select * 
from student as s 
left join course as c 
on s.id=c.id;

# Right join 

select * 
from student as s 
right join course  as c 
on s.id=c.id;

# Full join 
-- This is using in UNION in my_sql database syntax ok :  

select * 
from student as s
left join course as c 
on s.id=c.id 
union 
select * 
from student as s 
right join course as c 
on s.id=c.id; 

# Left Exclusive Join 

select * 
from student as s 
left join course as c 
on s.id=c.id 
where c.id is null ; 

# Right Exclusive join :  

select * 
from student as s 
right join course as c 
on s.id=c.id 
where s.id is null;

# Full Exclusive join 
-- where the data will show but not present in same ok : 

select * 
from student  as s  
left join  course as c 
on s.id = c.id 
where c.id is null 
union 
select * 
from student as s 
right join course as c 
on s.id=c.id 
where s.id is null ; 

# self join 
-- it is a regular join but the table is joined with itself : 

create table employee (
  id int primary key , 
  name varchar(50), 
  manager_id int 
);
 
insert into employee (id , name , manager_id)
values 
(101,"Adam",103),
(102,"Bob",104),
(103,"Casey",null),
(104,"Donald",103);

select a.name as manager_name , b.name
from employee as a 
join employee as b 
on a.id=b.manager_id; 





