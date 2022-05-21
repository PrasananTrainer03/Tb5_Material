-- Subqueries 

-- Display max. salary from Emp table 

select max(sal) from Emp;

-- Display name of employ who is getting max. salary 

select ename from Emp where sal=max(sal);

select ename from Emp where sal=(select max(sal) from Emp);

-- Display 2nd maximum salary 

select max(sal) from Emp where sal < (select max(sal) from Emp);

-- Display 2nd minimum salary 

select min(sal) from Emp where sal > (select min(sal) from Emp);

-- Display common records in Dept and Emp table, means deptNo exists in both tables 

select * from Dept where Deptno = ANY(select deptno from Emp);

-- Display Idle departments Means which exists in Dept table, but not in Emp Table 

select * from Dept WHERE DeptNO <> ALL(select deptno from Emp);
