# left join  
-- A left join also known as a left outer join , is a type of sql join opeartion that 
-- returns all the rows from the left table (also known as the "first" table) and 
-- matching rows from the right table (also known as the "second" table).if there are 
-- no matching rows in the right table , the result will contain NULL values in the 
-- column that come from the right table 

-- In other words, a left join combines the rows from both table based on a computer 
-- column but it also includes all the rows form the left table, even if there are no 
-- matches in the right table. This is useful when you want to include all the records 
-- from the first table,but only some records from the second table . 


select * 
from student as s 
left join course as c 
on s.id=c.id;