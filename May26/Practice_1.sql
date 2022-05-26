drop database if exists tb5practice;

create database tb5practice;

use tb5practice;

drop table if exists AgentPolicy;

drop table if exists employ;

/*   *******************************************************************
						Creating Employ Table 
	 *******************************************************************
*/

Create Table Employ
(
   empno INT primary key, 
   Name varchar(30),
   Gender ENUM('MALE','FEMALE'),
   Dept varchar(30),
   Desig varchar(30),
   Basic Numeric(9,2)
);

Insert into Employ(Empno,Name,Gender,Dept,Desig,Basic) 
values(1,'Yellaji','MALE','Java','Programmer',94234),
(2,'Mohan','MALE','Dotnet','Programmer',93334),
(3,'Srivalli','FEMALE','Java','Programmer',92244),
(4,'Bhargavi','FEMALE','Java','Developer',92344),
(5,'Chandana','FEMALE','Dotnet','Manager',93443),
(6,'Satish','MALE','Dotnet','Manager',95423);

select * from Employ;