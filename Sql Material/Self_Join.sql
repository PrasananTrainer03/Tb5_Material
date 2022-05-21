select Empno, Ename, Job, Sal, mgr 
from Emp;

select E1.Empno 'Manager Id', E1.Ename 'Manager Name', 
	   E2.Empno 'Employee Id', E2.Ename 'Employee Name' 
from Emp E1 INNER JOIN Emp E2 ON 
E1.Empno = E2.Mgr
Order By E1.ENAME;

-- select E1.Empno 'Manager Id', E1.Ename 'Manager Name', 
-- 	   E2.Empno 'Employee Id', E2.Ename 'Employee Name' 
-- from Emp E1 LEFT JOIN Emp E2 ON 
-- E1.Empno = E2.Mgr
-- Order By E1.ENAME;

select E1.Empno 'Manager Id', E1.Ename 'Manager Name', 
	   E2.Empno 'Employee Id', E2.Ename 'Employee Name' 
from Emp E1 RIGHT JOIN Emp E2 ON 
E1.Empno = E2.Mgr
Order By E1.ENAME;



