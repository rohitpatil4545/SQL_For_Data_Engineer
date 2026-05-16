-- DDL (Data Definition Language)  

-- Create 

create table student2(
   roll_no int primary key, 
   name varchar(50), 
   age int not null 
);

-- Alter 
-- change the structure of a table (add/ Remove / Modify / Columns)

alter table student2 add city varchar(50) ; 

-- Drop 
-- Delete the entire table (Structure: )   

drop table student2; 
        
-- DML (Data Manipulation  Language: )

-- Insert  

insert into student2 values 
(1,"Rohit",20,"Dhule"),
(2,"Patil",30,"Mumbai"),
(3,"Purava",50,"Pune "),
(4,"Kishor",40,"Delhi");  

-- Update
-- we update the name rollno 2  data and change the name patil as sheetal;

update student2 set name="Sheetal" where roll_no=2;  

-- Delete
-- Remove the rows from the table: 

delete from student2 where roll_no=4;
  
-- DQL (Data Query Language: ) 

-- Select : 
-- fetch data from tables :   

select * from student2;
select name from student2; 
select city from student2; 
select age from student2; 
select roll_no from student2;   

-- DCL (Data Control Language: ) 

-- Grant 
-- Revoke 

-- TCL (Transaciton Control Language: )

-- Commit 
-- save change permantely: 

-- Rollback 
-- undo last change (if not commited) 

-- Savepoint 
-- create a checkpoint to rollback to . 




-- Start a transaction
START TRANSACTION;

-- Insert new students
INSERT INTO student2 VALUES (5, "Amit", 25, "Nashik");
INSERT INTO student2 VALUES (6, "Sumit", 28, "Nagpur");

-- Save a checkpoint
SAVEPOINT sp1;

-- Insert another record
INSERT INTO student2 VALUES (7, "Kiran", 30, "Pune");

-- Oops! Rollback only the last insert
ROLLBACK TO sp1;

-- Now student with roll_no 7 will NOT be saved
-- But 5 and 6 are still in the transaction

-- Make changes permanent
COMMIT;

