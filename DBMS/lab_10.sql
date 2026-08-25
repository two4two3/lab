-- lab 10
-- MATH FUNCTIONS
-- part a

--1. Display the result of 5 multiply by 30.
select 5 * 30;

--2. Find out the absolute value of -25, 25, -50 and 50.
select ABS(-25), ABS(25), ABS(-50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select CEILING(25.2) , CEILING(25.7), CEILING(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select FLOOR(25.2), FLOOR(25.7), FLOOR(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2, 5%3;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select POWER(3,2), POWER(4,3);

--7. Find out the square root of 25, 30 and 50.
select SQRT(25), SQRT(30), SQRT(50);

--8. Find out the square of 5, 15, and 25.
select SQUARE(5), SQUARE(15), SQUARE(25);

--9. Find out the value of PI.
select PI();

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points
select ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2); 

--11. Find out exponential vaue of 2 and 3.
select EXP(2), EXP(3);

--12. Find out logarithm having base e of 10 and 2.
select LOG(10), LOG(2);

--13. Find logarithm base 10 of 5 and 100
select LOG10(5), LOG10(100);

--14. Find sine, cosine and tangent of 3.1415.
select SIN(3.1415), COS(3.1415), TAN(3.1415);

--15. Find sign of -25, 0 and 25.
select SIGN(-25), SIGN(0), SIGN(25);

--16. Generate random number using function.
select RAND();

--String functions
--Part – A:
--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select LEN(NULL), LEN(' hello  '); -- LEN();

--2. Display your name in lower & upper case.
select LOWER('Miteshchopda'), UPPER('MiteshChodpa')

--3. Display first three characters of your name.
select LEFT('Mitesh',3)

--4. Display 3rd to 10th character of your name.
select SUBSTRING('MiteshChopda', 3, 8);

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
Select REPLACE('abc123efg','123', 'XYZ'), REPLACE('abcabcabc','c', '5');

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII(0), ASCII(9);

--7. Write a query to display character based on number 97, 65,122,90,48,57.
select CONVERT(char, 97), CONVERT(char,65), CONVERT(char,122), CONVERT(char,90), CONVERT(char,45), CONVERT(char,57);

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
select LTRIM (' hello world ');

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
select RTRIM(' hello world ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select LEFT('SQL Server',4),  RIGHT('SQL Server',5);

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
select CAST('1234.56' AS decimal(6,2)), CONVERT(decimal(6,2),'1234.56');

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
select CAST(10.58 AS INT), convert(int,10.52);

--13. Put 10 space before your name using function.
select SPACE(10) + 'mitesh';

--14. Combine two strings using + sign as well as CONCAT ().
select 'mitesh ' + 'Chopda', CONCAT('Mitesh ','Chopda');

--15. Find reverse of “Darshan”.
select REVERSE('Darshan');

--16. Repeat your name 3 times.
select REPLICATE('Mitesh', 3);

-- Part – B: Perform following queries on EMPLOYEE table.
use cse_d2d_130;
-- 17. Display FIRSTNAME and LASTNAME in lowercase and uppercase.
select LOWER(firstname), LOWER(lastname), UPPER(firstname), UPPER(lastname) from employee;

-- 18. Display full name by combining FIRSTNAME and LASTNAME.
select firstname + ' ' + lastname from employee

-- 19. Display FIRSTNAME with first 3 characters only.
select LEFT(firstname,3) from employee;

-- 20. Display LASTNAME with last 2 characters only.
select right(lastname,2) from employee;

-- 21. Display length of each employee’s FIRSTNAME.
select LEN(firstname) from employee;

-- 22. Display FIRSTNAME after replacing ‘A’ with ‘@’.
select REPLACE(firstname, 'A', '@') from employee;

-- 23. Display FIRSTNAME and LASTNAME with - between them using CONCAT.
select CONCAT(firstname,'-', lastname ) from employee;

-- Part – C: Perform following queries on EMPLOYEE table.

-- 24. Display FIRSTNAME without first and last character.
select SUBSTRING(firstname,2, LEN(firstname)-2) from employee

-- 25. Display FIRSTNAME after replacing vowels with '*'.
select replace(replace(replace(replace(replace(
firstname,'a','*')
,'e','*')
,'i','*')
,'o','*')
,'u', '*')
from employee;

-- 26. Display employees where combined length of FIRSTNAME and LASTNAME is greater than 10.
select * from employee
where LEN(firstname + lastname) > 10;

-- 27. Display FIRSTNAME and its reverse.
select firstname, REVERSE(firstname) from employee;

-- 28. Display employees whose FIRSTNAME and LASTNAME start with same character using LEFT()
select * from employee
where LEFT(firstname,1) = LEFT(lastname,1);