create table student
(
	stid int,
	sname varchar(50),
	city varchar(50),
	spi decimal(4,2),
	branch varchar(50)
)

create table deposit(
	actno int,
	cname varchar(50),
	bname varchar(50),
	amount decimal(8,2),
	adate datetime
)

insert into deposit values
(101, 'MEET', 'MAVDI', 10000,  '1-3-2025'),
(102, 'JAY' ,'MADHAPAR', 5000, '4-1-2026'),
(103, 'RAHUL', 'BEDI', 3500, '7-1-2026'),
(104, 'RIYA', 'MAVDI', 1200, '7-6-2025'),
(105, 'MANSI' ,'KKV HALL', 3000 ,'2-3-2024'),
(106, 'DIYA', 'MADHAPAR', 2000, '1-3-2025'),
(107, 'MIRAL', 'BEDI', 1000, '5-9-2025'),
(108, 'UDAY', 'UMIYA CHOWK', 5000, '2-7-2025'),
(109, 'CHARMI', 'SHITAL PARK', 7000, '2-8-2026'),
(110, 'BHAVIN', 'RING ROAD', 8000, '2-2-2025'),
(111, 'BANSI', NULL, 9000, '1-1-2025')

insert into student values
(101, 'HETVI', 'RAJKOT', 7.40, 'COMPUTER'),
(102, 'RAJ', 'MORBI', 9.50, 'MECHANICAL'),
(103, 'VISHAL', 'RAJKOT', 9.00, 'CIVIL'),
(104, 'DEEP', 'SURAT', 8.80, 'COMPUTER'),
(105, 'DHARMIK', 'BARODA', 8.80, 'CHEMICAL'),
(106, 'KRUNAL', 'VAPI', 9.00, 'CIVIL'),
(107, 'RIYA', 'NAVSARI', 5.50, 'COMPUTER'),
(108, 'VRUNDA', 'KUTCH', 7.60, 'ELECTRICAL'),
(109, 'SMAIR', 'JAMNAGAR', 6.80, 'EC'),
(110, 'PARAG', 'SURAT', 7.00, 'CHEMICAL'),
(111, 'HARSH', 'RAJKOT', 4.00, NULL)


create table employee(
	eid int,
	firstname varchar(50),
	lastname varchar(50),
	department varchar(50),
	salary decimal(7,2),
	city varchar(50),
	gender varchar(6),
	joiningyear int
)

insert into employee values
(101, 'HETVI', 'PATEL', 'ADMIN', 12000.00, 'RAJKOT', 'FEMALE', 2026),
(102, 'RAJ', 'MEHTA', 'IT', 14000.00, 'AHMEDABAD', 'MALE', 2022),
(103, 'VISHAL', 'SHARMA', 'HR', 15000.00, 'BARODA', 'MALE', 2020),
(104, 'DEEP', 'PATEL', 'ADMIN', 12500.00, 'RAJKOT', 'MALE', 2026),
(105, 'DHAVAL', 'SHAH', 'IT', 14000.00, 'JAMNAGAR', 'MALE', 2024),
(106, 'RIYA', 'KAUR', 'IT', 5000.00, 'AHMEDABAD', 'FEMALE', 2024),
(107, 'PARAG', 'PANDYA', 'HR', 7000.00, 'RAJKOT', 'MALE', 2025),
(108, 'VRUNDA', 'VYAS', 'SERVER', 10000.00, 'BARODA', 'FEMALE', 2022),
(109, 'MEHUL', 'SINGH', 'HR', 12000.00, 'MORBI', 'MALE', 2020),
(110, 'MUBIN', 'PARMAR', 'TRANSPORT', 12000.00, 'SURAT', 'MALE', 2021),
(111, 'MAYANK', 'PUROHIT', 'ACCOUNT', 13000.00, NULL, 'MALE', 2020)


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
select sname from student where sname <> ('DEEP')

-- 15
select sname from student where branch is NULL

-- 16
select distinct branch from student

-- 17
select top 50 percent * from student

-- 18
select top 5 stid from student

-- PART 2

--19
select top 5 * from student 

--20
select top 3 * from student where spi>8

--21
select top 3 * from student where branch <> 'computer'

--22
select * from student where stid not between 105 and 109

--23 
select * from student where spi between 7.0 and 9.0 and stid between 102 and 108


--Part C

--24
select stid,sname,city,spi,branch from student where spi < 8.0

--25
select sname from student where city = 'rajkot' and spi<8.00

--26
select * from student where stid<105 and spi>8.00

--27
select * from student where stid between 100 and 110 and spi>7.5 and city in('rajkot','surat')

--28 
select *from student where branch in('civil','mechanical') and spi > 8.0
