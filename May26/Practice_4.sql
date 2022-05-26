use tb5practice;

drop table if exists course_faculty;

drop table if exists courses;

/* **********************************************************************************************
							Creating Course Table 
   **********************************************************************************************
*/

create table Courses
(
   Ccode INT Primary Key auto_increment,
   CourseName varchar(30),
   Duration INT,
   Fee Numeric(9,2),
   PreRequisite varchar(30)
);

/*  **************************************************************************************
						Inserting Records into Course Table
	**************************************************************************************
*/

Insert into Courses(CourseName,Duration,Fee,PreRequisite) 
VALUES('ORACLE',25,4500,'WINDOWS'),
	  ('VB.NET',30,5500,'WINDOWS AND PROGRAMMING'),
	  ('C PROGRAMMING',20,3500,'COMPUTER AWARENESS'),
	  ('ASP.NET',25,5000,'INTERNET AND PROGRAMMING'),
	  ('JAVA LANGUAGE',25,4500,'C LANGUAGE'),
	  ('XML PROGRAMMING', 15, 4000, 'HTML,SCRIPTING ASP/JSP');

select * from courses;

/* ************************************************************************************
				Creating Faculty Table 
   ************************************************************************************
*/

drop table if exists Faculty;

Create Table Faculty
(
   FacCode INT primary key auto_increment,
   FacName varchar(30),
   Qualification varchar(30),
   Exp varchar(100)
);

/*  **************************************************************************************
						Insert Records into Faculty Table 
	**************************************************************************************
*/

Insert into Faculty(FacName,Qualification,Exp) 
VALUES('GEORGE KOCH','MS COMPUTER SCIENCE','15 YEARS WITH DATABASES'),
	  ('DAN APPLEMAN','CS AND EE GRADUATE', 'EXTENSIVELY WORKED WITH COM'),
	  ('HERBERT SCHILDT','MS COMPUTER SCIENCE', 'AUTHOR OF SEVERAL BOOKS'),
	  ('DAVID HUNTER','MS ELECTRONICS', 'EXTENSIVELY WORKED WITH INTERNET TEHNOLOGEES'),
	  ('STEPHEN WALTHER','PH.D. IN PHILOSOPHY', 'EXTENSIVELY WORKED WITH INTERNET TEHNOLOGEES'),
	  ('KEVIN LONEY', 'MS ELETRONICS', 'SPECIALIZED IN ORACLE DBA'),
	  ('JAMIE JAWORSKI','BACHLORS OF ELECTRICAL' ,'DEVELOPED PROGRAMS FOR US DEFENSE DEPARTMENT'),
	  ('JASON COUCHMAN','OCP DBA','PUBLISHED ARTICLES ON ORACLE');

select * from Faculty;

/* *****************************************************************************************
					Creating Course_Faculty Table 
   *****************************************************************************************
*/

create table course_faculty
(
   	FacCode INT,
    CCode INT,
    Grade varchar(10),
    foreign key(Faccode) references Faculty(Faccode),
    foreign key(Ccode) references Courses(Ccode),
    primary key(FacCode,Ccode)
);

/*   ******************************************************************************************
						Inserting Records into Course_Faculty Table 
	 ******************************************************************************************
*/

INSERT INTO COURSE_FACULTY (FACCODE, CCODE, GRADE)
 VALUES(1,2,'A'),
	   (1,1,'A'),
	   (2,1,'A'),
	   (2,2,'A'),
	   (3,5,'A'),
	   (5,6,'B'),
	   (4,5,'A'),
	   (5,4,'A'),
	   (3,1,'A'),
	   (4,3,'B'),
	   (2,5,'A'),
	   (3,6,'B');                         

SELECT * FROM COURSE_FACULTY;
