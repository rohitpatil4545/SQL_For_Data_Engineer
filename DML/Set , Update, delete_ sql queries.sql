use college; 
show tables; 
select * from students ; 

select city 
from students 
where grade="A" 
group by city 
having max(marks)>93 ; 

set sql_safe_updates=0;

update students 
set grade="O" 
where grade ="A" ; 

update students 
set marks = 82 
where rollno=105 ; 
 
update students 
set grade="B"
where marks between 80 and 90 ;   

update students 
set marks = marks + 1 ;

select * from students;   





