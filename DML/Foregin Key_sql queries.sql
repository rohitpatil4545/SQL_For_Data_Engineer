# foregin key : 

Create table dept(
  id int primary key , 
  name varchar(50)
); 

insert into dept values 
(101,"English"), 
(102, "IT  ") ; 
select * from dept;

# cascade using update auto ;  

Create table teacher (
   id int primary key , 
   name varchar(50) , 
   dept_id int , 
   foreign key (dept_id) references dept(id)  
   on update cascade 
   on delete cascade 
); 
insert into teacher value 
(101,"Adam",101) ,
(102,"Eve",102); 

select * from teacher; 
select * from dept , teacher ;  
