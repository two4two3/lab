--1
create table emp(EmpID INT,
 EmpName VARCHAR(50) NOT NULL,
 Department VARCHAR(30),
 City VARCHAR(30),
 Salary INT,
 Experience INT,
 Gender CHAR(1))

 --2
 insert into emp values
(1, 'Rahul', 'IT', 'Rajkot', 55000, 4, 'M'),
(2, 'Amit', 'HR', 'Ahmedabad', 45000, 3, 'M'),
(3, 'Neha', 'IT', 'Rajkot', 55000, 5, 'F'),
(4, 'Priya', 'Sales', 'Surat', 70000, 7, 'F'),
(5, 'Jay', 'IT', 'Vadodara', 35000, 2, 'M'),
(6, 'Karan', 'HR', 'Rajkot', 42000, 3, 'M'),
(7, 'Meera', 'IT', 'Surat', 80000, 8, 'F'),
(8, 'Vijay', 'Sales', 'Ahmedabad', 60000, 6, 'M'),
(9, 'Pooja', 'IT', 'Rajkot', 90000, 10, 'F'),
(10, 'Ravi', 'Finance', 'Jamnagar', 50000, 5, 'M'),
(11, 'Nisha', 'HR', 'Surat', 38000, 2, 'F'),
(12, 'Harsh', 'IT', 'Ahmedabad', 65000, 7, 'M'),
(13, 'Riya', 'Sales', 'Rajkot', 45000, 4, 'F'),
(14, 'Dhruv', 'Finance', 'Surat', 75000, 9, 'M'),
(15, 'Mihir', 'IT', 'Rajkot', 48000, 3, 'M');

--3
select EmpName,Salary from emp where Salary>60000

--4
select * from emp where Department = 'IT' and Salary>50000 and Experience > 3

--5
select * from emp where city = 'rajkot' or city = 'Ahmedabad'

--6
select * from emp 
where (
Department in ('it') and Salary>60000
)or 
(
Department in('hr') and Salary > 40000
)

--7 
select * from emp 
where city in ('rajkot','Ahmedabad','surat') 

--8
select * from emp 
where (
Department in ('it','hr','sales') and Salary>50000
)

--9
select * from emp where Salary between 40000 and 70000

--10
select * from emp where Salary between 40000 and 80000  and Experience between 3 and 8

--11
select * from emp where Salary between 35000 and 50000  or Experience between 3 and 8

--12
select * from emp 
where city in ('rajkot','Ahmedabad','surat') and Salary between 40000 and 80000 

--13
select * from emp 
where city in ('rajkot','Ahmedabad') and Department in ('it','hr') and Salary between 50000 and 90000 

--14
select * from emp 
where (
Department in ('it') and Salary>70000
)or 
(
Department in('hr') and Salary > 50000
)or
(
city in ('rajkot') and Experience >10
)

--15
update emp set
Salary = Salary*1.2

 --16
 update emp set
 salary = Salary*1.15
 where Salary<40000

 
 --17
 update emp set
 salary = Salary*1.15
 where Department='it' and Experience>5 and Salary<60000

 --18
 update emp set
 Salary=Salary*1.10
 where Department in ('it','hr','sales')

 --19
 update emp set
 Salary =Salary*0.9
 where Department='finance'

 --20
 update emp set
 Salary=Salary*1.15
 where Salary between 40000 and 60000 and Experience between 3 and 7

 --21
 update emp set 
 city='rajkot' 
 where city in ( 'Ahmedabad' ,'Jamnagar') and Salary>50000

 --22
 delete from emp
 where Salary<25000

 --23
 delete from emp
 where Department in ('hr','sales')

 --24
 delete from emp
 where Experience between 0 and 2  and Salary<30000

 --25
  delete from emp
 where city in (' Rajkot ',' Ahmedabad ') and Salary < 35000

 --26
 alter table emp
 add Email varchar(100)

 --27
 alter table emp
 alter column empname varchar(100)

 --28
 sp_rename 'emp.empname','EmployeeName'
 
 --29
truncate table emp

--30
drop table emp

select * from emp