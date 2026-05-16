-- sql sub Queries : 
--   A subquery or inner query or a nested query is a query within another sql query 

-- It is involve 2 select statement: 
 
use college; 
 
select * from student;
 
select avg(marks) from student; 

select name, marks
from student 
where marks > 85.3333; 

select name, marks 
from student 
where marks > (select avg (marks) from student);

# Find the even roll numbers
-- 1 Find the even rollnumbers 

select rollno 
from student 
where rollno % 2 = 0 ;

-- 2 Find the names of students with even roll no : 

select rollno , name 
from student
where rollno % 2= 0; 
 
-- or write query like this also : 


select name , rollno 
from student 
where rollno
           in ( 
                 select rollno 
                 from student 
                 where rollno%2=0 
			  ) ; 
    
select marks , name 
from student 
where marks 
         in (
            select marks 
            from student 
            where marks > 90
         ); 
   
-- 1 Find the students of dehli : 

select * 
from student 
where city="Delhi"; 

-- 2 Find their max marks using the sublist in step 1 :

select max(marks) 
from (
      select * 
      from student 
      where city="Delhi"
     ) 
as temp ;     

-- or this is simple and easy way to write the query 

select max(marks) 
from student 
where city="Delhi";
 
  
         