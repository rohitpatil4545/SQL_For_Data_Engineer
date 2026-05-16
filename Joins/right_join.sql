# Right join 
-- A right join , also known a right outer join , is a type of join operation in sql that 
-- returns all the rows form the right table and matching rows form the left table .If 
-- there are no matches in the left table, the result will still contain all the rows from 
-- the right table. with Null values, for the column from the left table . 

select * 
from student as s 
right join course  as c 
on s.id=c.id;