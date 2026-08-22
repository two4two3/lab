
-- LAB 3 Perform SQL SELECT Queries Using Operators and Conditions
-- PART 1
-- 1
select * from student
-- 2
select sname, city from student
-- 3
select * from student where branch='COMPUTER'
-- 4
select * from student where stid<105
-- 5
select sname, city, spi from student where spi > 6.50
-- 6
select sname from student where spi > 8.0 and branch='COMPUTER'
-- 7
select sname from student where stid > 103 and city='RAJKOT'

-- 8
select sname from student where city='RAJKOT' or city='SURAT'
select sname from student where city IN ('RAJKOT', 'SURAT')

-- 9
select sname from student where spi > 8.0 and stid<105

-- 10
select * from student where spi >= 7.0 and spi <= 9.0
select * from student where spi between 7.0 and 9.0

-- 11
select * from student where branch!='COMPUTER'
-- 12
select stid,sname,spi from student where branch in ('COMPUTER', 'CIVIL', 'CHEMICAL') and stid < 104

-- 13
select stid, sname from student where branch not in ('COMPUTER', 'CIVIL ')
-- 14
select sname from student where sname != 'DEEP'
select sname from student where sname <> 'DEEP'

-- 15
select sname from student where branch is NULL

-- 16
select distinct branch from student
-- 17
select TOP 50 percent * from student
-- 18
select top 5 * from student

-- PART 2
-- 19
select top 5 * from student
-- 20
select top 3 * from student where spi > 8.0
-- 21
select top 5 stid, sname from student where branch <> 'COMPUTER'
-- 22
select * from student where stid not between 105 and 109
-- 23
select * from student 
where spi> 7.0 and spi<=9.0 and stid between 102 and 108

-- PART C
-- 24
select stid,sname,city,spi,branch from student
-- 25
SELECT sname FROM student WHERE city='RAJKOT' and spi<8.0
-- 26
select * from student 
where spi> 8.0 and stid<105
-- 27
select * from student 
where spi> 7.5 and spi<=9.0 
	and stid between 100 and 110
	and city in ('RAJKOT', 'SURAT')
-- 28
select * from student 
where 
spi> 8.0
and branch in ('CIVIL', 'MECHANICAL')

-- LAB 4
-- PART A
-- 1
UPDATE student SET
spi = 8.0 WHERE spi=7.0

-- 2
UPDATE student SET
city = 'AHMEDABAD'
where
stid=101

-- 3
UPDATE student SET
spi = 9.20,
city = 'VADODARA'
where
stid=104

-- 4
UPDATE student SET
spi = 8.50
where
stid=105

-- 5
UPDATE student SET
branch = 'IT'
where
branch = 'COMPUTER'

-- 6
UPDATE student SET
branch = 'AUTOMOBILE'
where
stid = 102

-- 7
UPDATE student SET
spi = 7.50
where
stid between 103 and 107

-- 8
UPDATE student SET
city = 'MUMBAI'
where
stid = 110

-- 9
UPDATE student SET
spi = 6.0
where
stid = 107

-- 10
UPDATE student SET
spi = 7.20, branch='ELECTRICAL'
where
stid = 109


-- PART B
-- 11
UPDATE student SET
spi = spi*1.1
where
spi < (10 * 0.9)

-- 12
UPDATE student SET
spi = spi*1.2
where
spi < (10 * 0.8)
SELECT * FROM student

-- 13
UPDATE student SET
spi = spi + 0.5
where
spi < (9.5)
SELECT * FROM student

-- 14
UPDATE student SET
branch = 'EC', spi = 8.0, city = 'SURAT'
where
sname = 'KRUNAL'
SELECT * FROM student

-- 15
UPDATE student SET
spi = 7.0, city = 'RAJKOT'
where
branch = 'CIVIL' and stid < 105

-- PART C
-- 16
UPDATE student SET
spi = NULL
where
stid = 110

-- 17
UPDATE student SET
branch = NULL
where
stid = 103

-- 18
SELECT sname FROM student
where spi is NULl

-- 19
SELECT sname FROM student
where branch is not NULl

-- 20
UPDATE student SET
sname = 'DARSHAN',branch='COMPUTER',spi=8.5
where
stid = 108

-- 21
UPDATE student SET
city = 'SURAT'
where
spi < 7.0
SELECT * FROM student

-- 22
UPDATE student SET
city = NULL, branch='MECHANICAL'
where
stid = 109
SELECT * FROM student

-- Lab 5
-- Part A:

-- 1
ALTER TABLE deposit
ADD state varchar(20)

-- 2 Add two more columns city varchar(20) and pincode int.
ALTER TABLE deposit
ADD state varchar(20)


-- EXTRA QUERIES
-- 1
CREATE TABLE EMP(
 EmpID INT,
 EmpName VARCHAR(50) NOT NULL,
 Department VARCHAR(30),
 City VARCHAR(30),
 Salary INT,
 Experience INT,
 Gender CHAR(1)
)

-- 2
INSERT INTO EMP VALUES
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

-- 3
select EmpName, Salary from EMP where Salary > 60000

-- 4
select * from EMP 
where 
Department = 'IT' and
Salary > 50000 and
Experience > 3

-- 5
select * from EMP 
where 
City in ('RAJKOT', 'AHMEDABAD')

-- 6
select * from EMP 
where 
(
Department = 'IT' and
Salary > 60000
) or
(
Department = 'HR' and
Salary > 40000
)

-- 7
select * from EMP 
where 
City in ('RAJKOT', 'AHMEDABAD', 'SURAT')

-- 8
select * from EMP 
where 
Department in ('IT','HR', 'SALES') and
Salary > 50000

-- 9
select * from EMP 
where 
Salary between 40000 and 70000

-- 10
select * from EMP 
where 
Salary between 40000 and 80000 and
Experience between 3 and 8

-- 11
select * from EMP 
where 
Salary between 30000 and 50000
or Experience between 10 and 15

-- 12
select * from EMP 
where 
City in ('RAJKOT', 'SURAT', 'AHMEDABAD') and
Salary between 40000 and 80000

-- 13
select * from EMP 
where 
City in ('RAJKOT','AHMEDABAD') and
Department in ('IT', 'HR') and
Salary between 50000 and 90000

-- 14
select * from EMP 
where 
Department = 'IT' or
Department = 'HR' and Salary > 50000 or 
City = 'RAJKOT' and Experience > 10

-- 15
UPDATE EMP SET
Salary = salary * 1.2

-- 16
UPDATE EMP SET
Salary = salary * 1.15
where
Salary < 40000

-- 17
UPDATE EMP SET
Salary = salary * 1.2
where
Department = 'IT' and
Experience > 5 and
Salary < 60000

-- 18
UPDATE EMP SET
Salary = salary * 0.1
where
Department in ('IT','HR','SALES')

-- 19
UPDATE EMP SET
Salary = salary * 0.9	
where
Department = 'Finance'

-- 20
UPDATE EMP SET
Salary = salary * 1.15
where
Salary between 40000 and 60000 and
Experience between 3 and 7

-- 21
UPDATE EMP SET
Salary = salary * 1.15
where
Salary > 50000 and
City in ('Ahmedabad', 'jamnagar')

-- 22
DELETE FROM EMP
WHERE Salary<25000

-- 23
DELETE FROM EMP
WHERE Department in ('HR', 'SALES')

-- 24
DELETE FROM EMP
WHERE Experience between 0 and 2
and Salary<3000

-- 25
DELETE FROM EMP
WHERE City in ('RAJKOT', 'AHMEDABAD') and Salary < 35000

-- 26
ALTER TABLE EMP
add email varchar(100)

-- 27
ALTER TABLE EMP
alter column EmpName varchar(100)

-- 28
SP_RENAME 'EMP.EmpName', 'EmployeeName'

-- 29
TRUNCATE TABLE EMP

-- 30
drop table EMP