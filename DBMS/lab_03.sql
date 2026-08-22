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