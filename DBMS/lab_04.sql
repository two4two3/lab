
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