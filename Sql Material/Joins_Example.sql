desc dept;

Desc Emp;

-- select Dept.Deptno,Dname,Empno,Ename,job,sal
-- from Dept,Emp where Dept.Deptno=Emp.Deptno;

-- Inner Join Example 

select Dept.Deptno, Dname, Empno,Ename,job,sal,comm
from Dept INNER JOIN Emp ON 
Dept.Deptno=Emp.Deptno ;

select D.Deptno,Dname,Empno,Ename,job,Sal,comm
from Dept D Inner Join Emp E ON 
D.Deptno=E.DeptNo;

select A.AgentId, FirstName, LastName, City,SSN,
P.PolicyId,AppNumber,ModalPremium,AnnualPremium
from Agent A Inner JOIN AgentPolicy AP 
ON A.AgentId=AP.AgentID 
INNER JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- Example for LEFT OUTER JOIN 

select D.Deptno,Dname,Empno,Ename,job,Sal,comm
from Dept D LEFT JOIN Emp E ON 
D.Deptno=E.DeptNo;

select A.AgentId, FirstName, LastName, City,SSN,
P.PolicyId,AppNumber,ModalPremium,AnnualPremium
from Agent A LEFT JOIN AgentPolicy AP 
ON A.AgentId=AP.AgentID 
LEFT JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- Example for RIGHT OUTER JOIN 

select D.Deptno,Dname,Empno,Ename,job,Sal,comm
from Dept D RIGHT JOIN Emp E ON 
D.Deptno=E.DeptNo;

select A.AgentId, FirstName, LastName, City,SSN,
P.PolicyId,AppNumber,ModalPremium,AnnualPremium
from Agent A RIGHT JOIN AgentPolicy AP 
ON A.AgentId=AP.AgentID 
RIGHT JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- Cross Join 

select * from Dept cross join Emp;

-- Self join : If a table joins with itself known as self-join 