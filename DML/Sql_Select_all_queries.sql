-- Having clause 
-- apply some condition on rows used when we want to apply any condition after grouping : 

-- All queries : 
select city , count(rollno)
from students 
group by city
having max(marks)>90; 


select city 
from students 
where grade="A" 
group by city 
having max(marks) >=93
order by city ;








