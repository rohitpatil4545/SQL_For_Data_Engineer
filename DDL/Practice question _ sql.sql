# practice question : 
# i) change the name of column name to full_name  : 
# ii) Delete all the student who scored marks less than 80 : 
# iii) Delete the column for grade : 

alter table student 
change
name full_name Varchar(50) ; 

delete from student 
where marks < 80 ;  

alter table student 
drop column grade; 

