Create table Employee (
  employee_id int primary key , 
  employee_name varchar(50) , 
  department varchar(50) , 
  salary decimal (10,2) , 
  hire_date date 
);

Insert into employee 
values 
(1,'Amit','HR',50000,'2022-01-15'),
(2,'Neha','HR', 55000,'2023-03-10'),
(3,'Suresh','HR',48000,'2021-11-20'),
(4,'Rohit','HR',52000,'2022-09-05'),
(5,'Raj','Finance',60000,'2021-07-23'),
(6,'Ravi','Finance',62000,'2022-09-01'),
(7,'Kiran','Finance',58000,'2021-02-14'),
(8,'Sunita','Finance',61000,'2023-01-11'),
(9,'Priya','IT',70000,'2020-12-02'),
(10,'Anjali','IT',67000,'2021-11-19'), 
(11,'Vikas','IT',69000,'2022-05-20'),
(12,'Sanjay','IT',72000,'2023-04-30'),
(13,'Meena','IT',68000,'2021-03-15');

#  Window Function : 
-- window function applies aggregate, ranking and analytic functions over a particular window (set of rows). 
-- and over clause is used with window functions to define that window : 

select * from Employee; 

select department,
	   max(salary) 
from employee 
group by department; 

select *  from employee e 
join  
    (select department,
	        max(salary)  
        from employee 
        group by department 
) d 
on e.department = d.department; 

select *
from employee e 
join (select department,
	        max(salary)  as max_sal  
        from employee 
        group by department ) d 
on e.department = d.department  
and e.salary = d.max_sal ;        

select department , max(salary) 
from employee 
group by department;  

select *  
from employee as e 
join (
    select department , 
    max(salary)  as max_salary
	from employee 
    group by department 
)  d 
on e.department = d.department   
and e.salary = d.max_salary ; 

select employee_name , 
	   department , 
       salary , 
       hire_date , 
row_number () Over (partition by department order by salary desc) as row_num   
from employee ;
   
-- Window Function()  Over (Partition By <Partition column >order by) as column_name 
-- ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary desc)


# Window function can  be defined in the SELECT section of the query :   

-- SELECT 
--  window_function() OVER(
--      PARTITION BY partition_expression 
--      ORDER BY order_expression 
--      window frame_extent 
-- ) AS window_column_alias 
-- FROM table_name   










