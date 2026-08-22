-- Lab 5
-- Part A:

-- 1 Add column state varchar(20). 
ALTER TABLE deposit
ADD state varchar(20)

-- 2 Add two more columns city varchar(20) and pincode int.
ALTER TABLE deposit
ADD city varchar(20), pincode int

-- 3. Change the size of cname column from varchar(50) to varchar(35).
ALTER TABLE deposit
alter column cname varchar(35)

-- 4. Change the data type of amount from decimal to int. 
ALTER TABLE deposit
alter column amount int

-- 5. Delete column city from the DEPOSIT table. 
Alter Table deposit
drop column city

-- 6. Rename column actno to ano.
SP_RENAME 'deposit.actno', 'ano'

-- 7. Rename column bname to branch_name. 
SP_RENAME 'deposit.bname', 'branch_name'

-- 8. Rename table DEPOSIT to DEPOSIT_DETAIL. 
SP_RENAME 'deposit', 'deposit_detail'

-- 9. Add column ifsc_code varchar(15). 
ALTER TABLE deposit_detail
add ifsc_code varchar(15)

-- 10. Change the size of bname column from varchar(50) to varchar(30).
alter table deposit_detail
alter column bname varchar(30)

-- Part B:
-- 11. Rename column adate to aopendate. 
SP_RENAME 'deposit_detail.adate', 'aopendate'

-- 12. Delete column aopendate from DEPOSIT_DETAIL table. 
alter table deposit_detail
drop column aopendate

-- 13. Rename column cname to customer_name. 
SP_RENAME 'deposit_detail.cname', 'customer_name'

-- 14. Add column country varchar(20).
alter table deposit_detail
add country varchar(20)

-- 15. Add column account_type varchar(15).
alter table deposit_detail
add account_type varchar(15)

-- PART C:
-- 16. Change data type of pincode from int to bigint.
alter table deposit_detail
alter column pincode bigint

-- 17. Delete column account_type.
alter table deposit_detail
drop column account_type

-- 18. Rename column amount to balance.
SP_RENAME 'deposit_detail.amount', 'balance'

-- 19. Add column status varchar(10).
alter table deposit_detail
add status varchar(10)

-- 20. Change table name deposit_detail to bank_deposit
SP_RENAME 'deposit_detail', 'bank_deposit'


-- PART A:
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

-- 1. Delete all the records having amount less than or equal to 3000.
delete from deposit
where amount <= 3000

-- 2. Delete all the accounts of ‘BEDI’ branch customer.
delete from deposit
where bname =  'BEDI'

-- 3. Delete all the accounts having account number greater than 102 and less than 109.
delete from deposit
where actno between 102 and 109

-- 4. Delete all the accounts whose branch is ‘BEDI’ or ‘MADHAPAR’.
delete from deposit
where bname in ('BEDI','MADHAPAR')

-- 5. Delete all the accounts details where amount is 8000 and account open after 1-1-2025;
delete from deposit
where amount = 8000 and adate > '1-1-2025'

-- 6. Delete all the accounts whose account branch is NULL.
delete from deposit
where bname is NULL

-- 7. Delete all the accounts details where amount is 7000 and name is CHARMI and branch is SHITAL PARK.
delete from deposit
where cname = 'CHARMI' and amount = 7000 and bname = 'SHITAL PARK'

-- 8. Delete all the remaining records using DELETE command.
delete from deposit

-- 9. Delete all the records of DEPOSIT table. (Use TRUNCATE)
truncate table deposit

-- 10. Remove DEPOSIT table. (Use DROP)
drop table deposit


-- PART B:
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

-- 11. Delete all the students whose stdid is greater than 105.
DELETE FROM student where
stid > 105

-- 12. Delete the records whose branch is NULL and sname is not NULL.
DELETE FROM student where
branch is NULL and sname is not NULL

-- 13. Delete the records whose SPI is less than 9 and city is RAJKOT.
DELETE FROM student where
spi < 9 and city = 'RAJKOT'

-- 14. Delete the records whose branch name is not empty.
DELETE FROM student where
branch is not NULL

-- 15. Delete all the records of STUDENT table. (Use TRUNCATE)
truncate table student