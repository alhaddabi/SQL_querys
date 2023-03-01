create table Department (
dep_id int  primary key,
dep_name varchar(50),
dep_HOD varchar (20),
tec_id INTEGER,
tecfk_id INTEGER FOREIGN KEY REFERENCES teacher(tec_id)
);
DROP TABLE dEPARTMENT ;

create table teacher (
tec_id int primary key,
tec_name varchar(20),
tec_phonenumber int,
tec_email varchar (99),
tec_gender varchar (10),
tec_major varchar (20),
tec_salary int ,
);
DROP TABLE TEACHER ;

INSERT INTO Department (dep_id, dep_name, dep_HOD, tec_id)
VALUES (1, 'Computer Science', 'Jane Doe', 101),
       (2, 'Mathematics', 'John Doe', 102),
       (3, 'Physics', 'Jane Smith', 103),
       (4, 'Chemistry', 'John Smith', 104),
       (5, 'Biology', 'Jane Brown', 105),
       (6, 'History', 'John Brown', 106);

INSERT INTO teacher (tec_id, tec_name, tec_phonenumber, tec_email, tec_gender, tec_major, tec_salary)
VALUES (101, 'John Doe', 234, 'john.doe@email.com', 'Male', 'Mathematics', 750),
       (102, 'Jane Smith', 345, 'jane.smith@email.com', 'Female', 'Physics', 770),
       (103, 'John Smith', 456, 'john.smith@email.com', 'Male', 'Chemistry', 720),
       (104, 'Jane Brown', 567, 'jane.brown@email.com', 'Female', 'Biology', 780),
       (105, 'John Brown', 675, 'john.brown@email.com', 'Male', 'History', 700),
       (106, 'Jane Wilson', 789, 'jane.wilson@email.com', 'Female', 'Geography', 800);

	      -- set the number of rows you want to display--
	      select * from teacher limit 2 ; 


		  -- will skip the first 2 rows and will display the next 2 rows --
	      select * from teacher offset 2 limit 2 ;

	      select tec_id , t.tec_name , d.dep_name from Department d
	      NATURAL JOIN teacher t; 


		  select dbo.teacher.tec_id, dbo.teacher.tec_name,dbo.teacher.tec_phonenumber,dbo.Department.dep_name
		  from dbo.teacher, dbo.Department
		  where dbo.teacher.tec_id=dbo.Department.tec_id;

	   	  SELECT * FROM Department NATURAL JOIN teacher;

	      SELECT * FROM Department CROSS JOIN teacher;

		  SELECT *
          FROM teacher
          FULL OUTER JOIN Department ON teacher.tec_id = Department.dep_id;


		  SELECT *
          FROM teacher
          right OUTER JOIN Department ON teacher.tec_id = Department.dep_id;


		  SELECT *
          FROM teacher
          left OUTER JOIN Department ON teacher.tec_id = Department.dep_id;

		  SELECT *
          FROM teacher
          full OUTER JOIN Department ON teacher.tec_id = Department.dep_id;
		  ----------------------------------------------------------------------------------------------------



