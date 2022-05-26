drop database if exists tb5students;

create database tb5students;

use tb5students;

Drop Table if Exists Course_Faculty;

Drop Table if exists Courses;

Drop Table if exists Faculty;

DROP TABLE IF EXISTS BATCHES;
DROP TABLE IF EXISTS PAYMENTS;
Drop Table If Exists students;

/*  *******************************************************************************
							Creating Courses Table 
	*******************************************************************************
*/

CREATE TABLE COURSES
(
    CCODE INT AUTO_INCREMENT,
    NAME VARCHAR(30) NOT NULL,
    DURATION INT NOT NULL CHECK(DURATION >= 1),
    FEE INT NOT NULL CHECK(FEE >= 0),
    PREREQUISITE VARCHAR(100) NOT NULL,
    PRIMARY KEY(CCODE)
);

DESC COURSES;

/* **********************************************************************************
					Inserting Records into Courses Table 
   **********************************************************************************
*/

INSERT INTO COURSES (NAME, DURATION, FEE, PREREQUISITE)
VALUES('ORACLE',25,4500,'WINDOWS'),
	  ('VB.NET',30,5500,'WINDOWS AND PROGRAMMING'),
	  ('C PROGRAMMING',20,3500,'COMPUTER AWARENESS'),
	  ('ASP.NET',25,5000,'INTERNET AND PROGRAMMING'),
	  ('JAVA LANGUAGE',25,4500,'C LANGUAGE'),
	  ('XML PROGRAMMING', 15, 4000, 'HTML,SCRIPTING ASP/JSP');

SELECT * FROM COURSES;

/* **********************************************************************************
						Creating Faculty Table 
   **********************************************************************************
*/

Create Table Faculty
(
	FACCODE INT AUTO_INCREMENT,
    NAME VARCHAR(30) NOT NULL,
    QUAL VARCHAR(30) NOT NULL,
    EXP VARCHAR(100) NOT NULL,
    PRIMARY KEY(FACCODE)
);

/*  *********************************************************************************
						Inserting Records into Faculty Table 
	*********************************************************************************
*/

INSERT INTO FACULTY(NAME, QUAL, EXP)
VALUES('GEORGE KOCH','MS COMPUTER SCIENCE','15 YEARS WITH DATABASES'),
	  ('DAN APPLEMAN','CS AND EE GRADUATE', 'EXTENSIVELY WORKED WITH COM'),
	  ('HERBERT SCHILDT','MS COMPUTER SCIENCE', 'AUTHOR OF SEVERAL BOOKS'),
	  ('DAVID HUNTER','MS ELECTRONICS', 'EXTENSIVELY WORKED WITH INTERNET TEHNOLOGEES'),
	  ('STEPHEN WALTHER','PH.D. IN PHILOSOPHY', 'EXTENSIVELY WORKED WITH INTERNET TEHNOLOGEES'),
	  ('KEVIN LONEY', 'MS ELETRONICS', 'SPECIALIZED IN ORACLE DBA'),
	  ('JAMIE JAWORSKI','BACHLORS OF ELECTRICAL' ,'DEVELOPED PROGRAMS FOR US DEFENSE DEPARTMENT'),
	  ('JASON COUCHMAN','OCP DBA','PUBLISHED ARTICLES ON ORACLE');

SELECT * FROM FACULTY;

/*  ********************************************************************************
						Create Course_Faculty Table
	********************************************************************************
*/

CREATE TABLE COURSE_FACULTY
(
	FACCODE INT NOT NULL,
	CCODE INT NOT NULL,
	GRADE CHAR(1) NOT NULL,
	FOREIGN KEY(FACCODE) REFERENCES FACULTY(FACCODE),
	FOREIGN KEY(CCODE) REFERENCES COURSES(CCODE),
	PRIMARY KEY(FACCODE,CCODE),
    	CONSTRAINT FACULTY_GRADE CHECK (GRADE IN ('A','B','C'))
);

DESC COURSE_FACULTY;
    
/*  ********************************************************************************
					Insert Records into Course_Faculty Table
	********************************************************************************
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

/* ********************************************************************************
				        Creating Batches Table 
   ********************************************************************************
*/

 CREATE TABLE BATCHES
 (
    BCODE INT AUTO_INCREMENT,
    CCODE INT NOT NULL,
    FACCODE INT NOT NULL,
    STDATE DATE NOT NULL,
    ENDDATE DATE NOT NULL,
    TIMING ENUM('1','2','3') NOT NULL,
    PRIMARY KEY(BCODE),
    FOREIGN KEY(CCODE) REFERENCES COURSES(CCODE),
    FOREIGN KEY(FACCODE) REFERENCES FACULTY(FACCODE),
    CONSTRAINT DATES CHECK (STDATE <= ENDDATE)
);

DESC BATCHES;

/* *******************************************************************************
				Inserting Data into Batches Table 
   *******************************************************************************
*/

INSERT INTO BATCHES (CCODE, FACCODE, STDATE, ENDDATE, TIMING)
    VALUES (1, 2, '2021-01-01', '2021-01-10', 1),
	   (2, 2, '2021-01-11', '2021-01-20', 2),
	   (3, 3, '2021-01-21', '2021-01-31', 3),
	   (4, 5, '2021-02-01', '2021-02-20', 1),
	   (1, 2, '2021-02-15', '2021-02-25', 3);

SELECT * FROM BATCHES;

/* **********************************************************************************
					Creating Students Table 
   **********************************************************************************
*/

CREATE TABLE STUDENTS
(
    ROLLNO INT AUTO_INCREMENT,
    BCODE INT NOT NULL,
    NAME VARCHAR(30) NOT NULL,
    GENDER CHAR(1) NOT NULL,
    DJ DATE NOT  NULL,
    PHONE VARCHAR(10) NOT NULL,
    EMAIL VARCHAR(30) NOT NULL,
    PRIMARY KEY(ROLLNO),
    FOREIGN KEY(BCODE) REFERENCES BATCHES(BCODE),
    CONSTRAINT STU_GENDER CHECK (GENDER IN ('M', 'F'))
);

DESC STUDENTS;

/* **************************************************************************************
				Insert Recods into Students Table 
   **************************************************************************************
*/

INSERT INTO STUDENTS ( BCODE, NAME, GENDER, DJ, PHONE, EMAIL)
VALUES (1,'GEORGE MICHEAL','M','2020-01-01', '488333','GM@YAHOO.COM'),
       (2,'MICHEAL DOUGLAS','M','2020-03-03', '334333','MD@HOTMAIL.COM'),
       (3,'ANDY ROBERTS','M','2019-02-05', '433554','AR@YAHOO.COM'),
       (4,'MALCOM MARSHALL','M','2021-01-07', '653345','MM@USA.NET'),
       (5,'VIVAN RICHARDS','M','2021-02-02', '641238','VR@YAHOO.COM'),
       (1,'CHIRS EVERT','F','2021-01-12', '125462','CE@YAHOO.COM'),
       (2,'IVAN LENDAL','M','2019-05-05', '431212','IL@HOTMAIL.COM'),
       (3,'GEORGE MICHEAL','M','2019-06-12', '488333','GM@HOTMAIL.COM'),
       (5,'RICHARD MARX','M','2019-09-12', '876567','RM@HOTMAIL.COM'),
       (4,'TINA TURNER','F','2019-12-03', '565678','TINAT@HOTMAIL.COM');

/* ************************************************************************************
							Creating Payments Table
   ************************************************************************************
*/

CREATE TABLE PAYMENTS
(
    ROLLNO INT NOT NULL,
    DP DATE NOT NULL,
    AMOUNT INT NOT NULL,
    FOREIGN KEY(ROLLNO) REFERENCES STUDENTS(ROLLNO),
    PRIMARY KEY(ROLLNO,DP),
    CONSTRAINT AMOUNT_PAID CHECK (AMOUNT >= 25)
);

DESC PAYMENTS;
/* *****************************************************************************************
					Insert Data into Payments Table 
   *****************************************************************************************
*/

INSERT INTO PAYMENTS (ROLLNO, DP, AMOUNT)
VALUES (1,'2020-01-01',4500),
       (2,'2020-03-03',3500),
       (3,'2019-02-05',1000),
       (4,'2021-01-07',2000),
       (5, '2021-02-02',3000),
       (6,'2021-01-12',3000),
       (7,'2019-05-05',2000),
       (8,'2019-06-12',5000),
       (9,'2019-09-12',3500);
       -- (10,'2019-12-03',3500),
--        (11,'2020-01-01',2000),
--        (12,'2020-03-03',2000),
--        (13,'2019-02-05',3000),
--        (14,'2021-01-07',4500),
--        (15,'2021-02-02',1000),
--        (16,'2021-01-12',3500);

SELECT * FROM PAYMENTS;
