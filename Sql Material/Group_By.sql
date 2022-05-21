-- Group By : Used to display aggregate reports w.r.t. Field specified 

-- Display total salary from Emp table 

select sum(sal) from Emp;

-- Display job wise total salary from Emp table 

select job, sum(sal) 
from Emp  group by Job;

-- Display job wise max, min, avg salary from Emp table

select job, max(sal), min(sal), avg(sal) 
from Emp group by job;

-- Display job wise how many employs are working in each job-wise 

select job, count(*) from Emp
group by job;

select job, count(*) from Emp 
group by job
having count(*) > 1;

select job,sum(sal),avg(sal),max(sal),min(sal) from 
emp group by job
having sum(sal) >= 5000;

