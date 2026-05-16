# Table related queries:  alter


# Alter  

# Add column :  
alter table student add column city varchar(50); 

# Drop column : 
alter table student drop column city;  


# Remname Table: 
alter table student rename to Student_Update; 
alter table Student_Update  rename to student;

# Change column : 
alter table student change column age age_id int ; 
alter table student change column age_id age int;

# Modify column :  

alter table student modify name varchar(20) ; 
alter table student modify age int not null ;

alter table student add column salary float ;

alter table student modify salary int ; 

desc student;
