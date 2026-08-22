-- LAB 6:

create table deposit(
	actno int,
	cname varchar(50),
	bname varchar(50),
	amount decimal(8,2),
	adate datetime
)

truncate table deposit;

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

-- PART A:

-- 1. Copy all records from DEPOSIT where AMOUNT > 3000 into HIGH_AMOUNT. 
select * into HIGH_AMOUNT from deposit
where amount > 3000

-- 2. Copy only CNAME and AMOUNT from DEPOSIT where BNAME = 'MAVDI' into MAVDI_CUSTOMERS
select cname,amount into MAVDI_CUSTOMERS from deposit
where bname = 'MAVDI'

-- 3. Copy records of DEPOSIT where ADATE > '2025-01-01' into RECENT_DEPOSITS. 
select * into RECENT_DEPOSITS from deposit
where adate > '2025-01-01'

-- 4. Copy distinct BNAME from DEPOSIT into BRANCH_LIST. 
select distinct bname into BRANCH_LIST from deposit

-- 5. Copy top 5 records from DEPOSIT into TOP_DEPOSITS. 
select TOP 5 * into TOP_DEPOSITS from deposit

-- 6. Copy records where AMOUNT between 2000 and 6000 into MID_RANGE. 
select TOP 5 * into MID_RANGE from deposit
where amount between 2000 and 6000

-- 7. Copy distinct branch names from DEPOSIT into UNIQUE_BRANCH.
select distinct bname into UNIQUE_BRANCH from deposit

-- 8. Copy records with NULL branch into NO_BRANCH_ASSIGNED. 
select * into NO_BRANCH_ASSIGNED from deposit
where bname is NULL

-- 9. Copy all records and rename AMOUNT as BALANCE into DEPOSIT_COPY. 
select actno,
	cname,
	bname,
	amount as balance,
	adate 
into DEPOSIT_COPY from deposit

-- 10. Copy records where BNAME in ('MAVDI','BEDI') into SELECTED_BRANCH. 
select * INTO SELECTED_BRANCH from deposit
where bname in ('MAVDI','BEDI')

-- Part B:
drop table student;
create table student
(
	stid int,
	sname varchar(50),
	city varchar(50),
	spi decimal(4,2),
	branch varchar(50)
)

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

-- 11. Create a new table STUDENT_BACKUP from STUDENT without copying any data.
select * into STUDENT_BACKUP from student
where 1=2

-- 12. Copy SNAME and CITY where BRANCH = 'COMPUTER' into CS_STUDENTS. 
select SNAME,CITY into CS_STUDENTS from student
where BRANCH = 'COMPUTER'

-- 13. Copy top 3 students based on SPI into TOPPER_LIST.
select top 4 * into TOPPER_LIST from student
order by spi desc;

-- 14. Copy distinct CITY from STUDENT into CITY_LIST.
select distinct city into CITY_LIST from student

-- 15. Copy records where STDID between 103 and 108 into MID_STUDENTS. 
select * into MID_STUDENTS from student
where stid between 103 and 108

-- PART C:

-- 16. Copy records with NULL branch into NULL_BRANCH_STUDENTS
select * into NULL_BRANCH_STUDENTS from student
where branch is NULL

-- 17. Copy all STUDENT records and rename SPI as PERFORMANCE into STUDENT_COPY
select stid,sname,city,spi as PERFORMANCE into STUDENT_COPY from student

-- 18. Copy records where CITY in ('RAJKOT','SURAT') into CITY_WISE.
select * into CITY_WISE from student
where CITY in ('RAJKOT','SURAT')

-- 19. Copy students where BRANCH <> 'CIVIL' into NON_CIVIL_STUDENTS
select * into NON_CIVIL_STUDENTS from student
where BRANCH <> 'CIVIL'

-- 20. Copy selected columns (SNAME, CITY) from STUDENT table into a new table.
select SNAME, CITY into SELECTED_COLUMNS from student