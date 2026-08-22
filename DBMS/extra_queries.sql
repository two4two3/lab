
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