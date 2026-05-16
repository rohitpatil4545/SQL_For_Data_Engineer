CREATE DATABASE STUDY;
USE STUDY; 
create table student(
    id int primary key , 
    name varchar(50) ,
    age int not null 
);
describe student; 
select * from student;
insert into student values 
(2,"Purva",16) , 
(3,"Kishor",50);
select * from student;
alter table student add city varchar(50) ; 
describe student;  
update student set city = "Pune " where id = 1;
update student set city = "Mumbai " where name = "Purava";
update student set city = "Dhule " where id = 3;
select * from student ;  
select * from student ; 


