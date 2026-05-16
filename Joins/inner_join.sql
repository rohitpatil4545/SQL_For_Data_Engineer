# inner join 
-- In sql an inner join is type of join operation that combines data from two or 
-- more tables based on a specified condition. The inner join returns only the rows 
-- from both tables that satisfy the specified condition , i.e the matching rows. 

-- When you perform an inner join on two tables, the result set will only contain rows
-- where there is a match between the join column in both table . if there is no 
-- match , then the row will not be included in the result set . 

#  using alias 
# like this student as s 


select *  
from student as s 
inner join course  as c
on s.id = c.id; 