# Mysql View :  (Virtual Table: ) 
-- A view is a virtual table based on the result - set of an sql statement : 

Create view view1 as 
select rollno, name , marks from student ;  

select *   from view1;  

Drop view view1;

