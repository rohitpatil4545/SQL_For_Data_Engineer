# What is SQL Joins 

-- In sql (Structured Query language ) , a join is a way to combine data from more database tables based on a related column between them . 

-- Joins are used when we want to query information that is distributed across 
-- multiple tables in a databases , and the information we need is not contained in a 
-- single table . By Joining table together , we can create a virtual table that contains 
-- all of the information we need for our query . 

# Cross join (Cartation Product) : 
select * from sql_cs_live.users
cross join sql_cs_live.groups ; 


# Inner Joins 
-- In sql an inner join is type of join operation that combines data from two or 
-- more tables based on a specified condition. The inner join returns only the rows 
-- from both tables that satisfy the specified condition , i.e the matching rows. 

-- When you perform an inner join on two tables, the result set will only contain rows
-- where there is a match between the join column in both table . if there is no 
-- match , then the row will not be included in the result set . 

select * from sql_cs_live.membership t1 
inner join sql_cs_live.users t2 
on t1.user_id = t2.user_id; 


# Left Joins 
-- A left join also known as a left outer join , is a type of sql join opeartion that 
-- returns all the rows from the left table (also known as the "first" table) and 
-- matching rows from the right table (also known as the "second" table).if there are 
-- no matching rows in the right table , the result will contain NULL values in the 
-- column that come from the right table 

-- In other words, a left join combines the rows from both table based on a computer 
-- column but it also includes all the rows form the left table, even if there are no 
-- matches in the right table. This is useful when you want to include all the records 
-- from the first table,but only some records from the second table . 

select * from sql_cs_live.membership t1 
left join sql_cs_live.users t2 
on t1.user_id = t2.user_id;


# Right Joins 
-- A right join , also known a right outer join , is a type of join operation in sql that 
-- returns all the rows form the right table and matching rows form the left table .If 
-- there are no matches in the left table, the result will still contain all the rows from 
-- the right table. with Null values, for the column from the left table . 

select * from sql_cs_live.membership t1 
right join sql_cs_live.users t2 
on t1.user_id = t2.user_id; 


# Full Outer Join 
-- A full-outer join, sometimes called a full join is a type of join operation in sql that 
-- returns all matching rows from both the left and right tables , as well as any non-matching 
-- rows from eiter table. In other words, a full outer join returns all the 
-- rows from both tables and matches rows with common values in the specified 
-- columns, and fills in NULL values for column where there is no match : 

select * 
from sql_cs_live.person1 as p 
left join sql_cs_live.person2 as pp 
on p.id =pp.id  

union all 

select *  
from sql_cs_live.person1 as p 
right join sql_cs_live.person2 as pp 
on p.id = pp.id;


# self Joins :
-- A self join is type of join in which a table is joined with itself. This 
-- means that the table is treated as two separated tables,with each row in 
-- the table begin compared to every other row in the same table .

-- self joins are used when you want to compare the value of two 
-- different rows within the same table . for example ,you might  use a self 
-- join to compare the salaries of two employees who work in the same 
-- department , or to find all pairs of customers who have the same billing 
-- address . 

select * from sql_cs_live.users t1 
join sql_cs_live.users t2 
on t1.emergency_contact = t2.user_id ;


# More than 3 table using joins : 

select *  
from sql_cs_live.class as c 
join sql_cs_live.groups as g 
on c.class_id = g.group_id 
join sql_cs_live.category as a
on g.group_id = a.category_id; 


select * 
from sql_cs_live.person1 as p1 
join sql_cs_live.person2 as p2 
on p1.id = p2.id  
join sql_cs_live. users1 as p3 
on p2.id = p3.user_id ; 

# Filtering Columns 
-- Find order_id , name , and city , by joining users and orders . 
-- Find order_id , product category by joining order_details and category . 

select p1.name , p2.id , p3.name -- Filtering 
from sql_cs_live.person1 as p1 
join sql_cs_live.person2 as p2 
on p1.id =p2.id 
join sql_cs_live.users1 as p3 
on p2.id = p3.user_id ;


# Filtering  Rows : 

select * 
from sql_cs_live.person1 as p1 
join sql_cs_live.person2 as p2 
on p1.id = p2.id 
where p1.name ="Charle" and p2.name="Charle"; -- Filtering rows 


select *
from sql_cs_live.category as c
join sql_cs_live.order_details as o 
on c.category_id = o.category_id  
where c.vertical="Chairs" ; 



