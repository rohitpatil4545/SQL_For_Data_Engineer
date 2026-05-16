# Union 
-- it is used to combine the result set of two or more select statement 

-- It is used:
-- i) Every select should have same no of columns 
-- ii) Columns must have similar data types 
-- iii) columns is every select should be in same order: 

select name from employee 
union 
select name from employee; 

-- Union all 
-- used to show all data from include duplicates ok: 

select * from employee 
union all 
select * from employee ; 

# Intersect : 
-- The INTERSECT operator returns only the rows that appear in both 
-- result sets of two SELECT statements. 


# Except : 
-- The EXCEPT or MINUS operator returns only the distinct rows that appear 
-- in the first result set but not in the second result set of two SELECT statements. 

