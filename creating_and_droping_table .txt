create table Department (
dep_id int  primary key,
dep_name varchar(50),
dep_HOD varchar (20),
tec_id INTEGER,
tecfk_id INTEGER FOREIGN KEY REFERENCES teacher(tec_id)
);
drop table Department ;



create table teacher (
tec_id int primary key,
tec_name varchar(20),
tec_phonenumber int,
tec_email varchar (99),
tec_gender varchar (10),
tec_major varchar (20),
tec_salary int ,
);
drop table teacher ;




create table tec_cou
(
tec_id integer,
cou_id integer,
tec_iid integer FOREIGN KEY REFERENCES teacher(tec_id),
cou_iid integer FOREIGN KEY REFERENCES course(cou_id)
);
drop table tec_cou ;


create table course (
cou_id int primary key,
cou_name varchar (20),
);
drop table course ;


create table cou_stu
(
cou_id integer not null ,
stu_id integer not null ,
coufkey_id INTEGER FOREIGN KEY REFERENCES course(cou_id),
stufkey_id INTEGER FOREIGN KEY REFERENCES student(stu_id)
);
drop table cou_stu ;


create table student (
stu_id int primary key,
stu_name varchar (50),
stu_gender varchar (10),
stu_phonenumber int ,
stu_email varchar (50),
stu_joinDate date,
stu_GPA DECIMAL(4,2),
cou_id INTEGER FOREIGN KEY REFERENCES course(cou_id)
);
drop table student ;

