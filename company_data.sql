USE [CompanyData]
GO

------------------------------------------------------------------
select salary from employees;  


-------------------------------------------------------------------
SELECT emp_id, emp_name, salary, 
format(hire_date , 'MMMM dd,yyyy') as hair_date
FROM employees
-------------------------------------------------------------------
UPDATE [dbo].[employees]
   SET 
      [salary] = salary * 1.15 
GO
-------------------------------------------------------------------
SELECT salary , emp_name
FROM employees
WHERE (salary > 2200)
-------------------------------------------------------------------
select distinct [job_name]
from employees
------------------------------------------------------------------- 24
select  dep_id emp_name , job_name , manager_id , hire_date , salary , commission, dep_id
from employees
where (dep_id != 2001)
-------------------------------------------------------------------28
select * 
from employees
where hire_date < ('1991-1-1')
-------------------------------------------------------------------32
select avg (salary)
from employees
where job_name = 'ANALYST'
-------------------------------------------------------------------36
select *
from employees 
where emp_name LIKE 'B%'  OR emp_name LIKE '%E'
-------------------------------------------------------------------40
SELECT *
FROM DEPARTMENT_TABLE
WHERE dep_location LIKE 'F%'  OR dep_location LIKE '%N'
-------------------------------------------------------------------44
SELECT *
from employees
where commission > salary 
--------------------------------------------------------------------48
select emp_name 
from employees
where (1.25*salary) > 3000
--------------------------------------------------------------------52
select emp_name
from employees
where to_char(hire_date,'mon') = 'june' ;
--------------------------------------------------------------------56
select distinct [job_name]= 'CLERK', dep_id 
from employees
--------------------------------------------------------------------59
select * 
from employees
where (hire_date) < ('2003-1-1')
--------------------------------------------------------------------63
select *
from employees
where (salary) < 3500
--------------------------------------------------------------------67
select emp_name , job_name , salary 
from employees 
where job_name = 'ANALYST'
--------------------------------------------------------------------71
select *
from employees 
where to_char (hire_date,'year') = '1991'
--------------------------------------------------------------------75
select *
from employees 
where (hire_date) > ('1991-12-30')
--------------------------------------------------------------------79
select emp_id , emp_name , hire_date , salary 
from employees 
where (hire_date) < ('1991-4-2')
--------------------------------------------------------------------83
select emp_name , job_name 
from employees 
where manager_id = 0
---------------------------------------------------------------------87
select * 
from employees 
where (hire_date) = '1991-5-1' 
---------------------------------------------------------------------91
select emp_id , emp_name , salary 
from employees 
where emp_id = 68319
----------------------------------------------------------------------95
select emp_name , emp_id , salary 
from employees
where (salary / 30) > 100
-----------------------------------------------------------------------99
select * 
from employees
where to char (salary) = '%___%'
-----------------------------------------------------------------------103
select *
from employess
where to char (hire_date,'mon') = 'APRILA'
-----------------------------------------------------------------------107  
select sum(salary) subtotalsalary , dep_id 
from employees 
where dep_id  in (2001 , 3001 , 1001 )
group by dep_id;







