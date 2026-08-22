-- LAB 7:
-- Part A:
-- 1. Display employees detail whose FIRSTNAME starts with ‘H’.
select * from EMPLOYEE
where firstname like 'H%';

-- 2. Display employees detail whose FIRSTNAME consists of exactly 5 characters.
select * from EMPLOYEE
where firstname like '_____';

-- 3. Display employees detail whose CITY ends with ‘T’ and has 6 characters.
select * from EMPLOYEE
where city like '_____T';

-- 4. Display employees detail whose LASTNAME ends with ‘EL’.
select * from EMPLOYEE
where lastname like '%EL';

-- 5. Display employees detail whose FIRSTNAME starts with ‘R’ and ends with ‘A’.
select * from employee
where firstname like 'R%A';

-- 6. Display employees detail whose FIRSTNAME starts with ‘V’ and third character is ‘S’.
select * from employee
where firstname like 'V_S%';

-- 7. Display employees detail whose CITY is NULL and FIRSTNAME has 6 characters.
select * from employee
where firstname like '______'
and city is null;

-- 8. Display employees detail whose FIRSTNAME contains ‘AR’.
select * from employee
where firstname like '%AR%';

-- 9. Display employees detail whose CITY starts with ‘R’ or ‘B’.
select * from employee
where city like '[RB]%';

-- 10. Display employees detail whose DEPARTMENT is NOT NULL.
select * from employee
where department is not null;

-- 11. Display employees detail whose FIRSTNAME starts from alphabet A to H.
select * from employee
where firstname like '[A-H]%';

-- 12. Display employees detail whose second character of FIRSTNAME is a vowel.
select * from employee
where firstname like '_[aeiou]%';

-- 13. Display employees detail whose FIRSTNAME length ≥ 5.
select * from employee
where firstname like '_____%';

-- 14. Display employees detail whose LASTNAME starts with ‘PA’.
select * from employee
where lastname like 'PA%';

-- 15. Display employees detail whose CITY does not start with ‘B’.
select * from employee
where city like '[^b]%';

-- 15. Display employees detail whose CITY does not start with ‘B’.
select * from employee
where city like '[^b]%';

-- 16. Display employees whose second character of FIRSTNAME is a not vowel.
select * from employee
where firstname like '_[^AEIOU]%';

-- 17. Display employees whose JOINING YEAR last digit is 4 or 6.
select * from employee
where joiningyear like '%[46]';

-- 18. Display employees detail whose FIRSTNAME starts with ‘H’, ends with ‘I’, and CITY contains ‘RA’.
select * from employee
where firstname like 'H%I' and city like '%RA%';

-- 19. Display employees detail whose FIRSTNAME contains ‘A’, CITY ends with ‘D’, and DEPARTMENT is NOT NULL.
select * from employee
where firstname like '%A%' and city like '%d' and department is not null;

-- 20. Display employees whose second and third characters of FIRSTNAME are vowels and CITY starts with ‘R’.
select * from employee
where firstname like '_[aeiou][aeiou]%' and city like 'R%';

-- PART B:
-- 21. Display employees whose CITY contains ‘RA’ and salary less than 13000 and joining year last digit is 6.
select * from employee
where city like '%RA%' and salary < 13000 and joiningyear like '%6';

-- 22. Display employees whose SALARY between 10000 and 15000 between 10000 and 15000 name contains 'KO' and FIRSTNAME start with H.
select * from employee
where salary between 10000 and 15000
and city like '%KO%' and firstname like 'H%';

-- 23. Display employees whose FIRSTNAME starts with ‘A’ or ‘D’ and SALARY greater than 12000.
select * from employee
where firstname like '[ad]%' and salary > 12000;

-- 24. Display employees whose CITY contains ‘N’ and SALARY less than 15000.
select * from employee
where city like '%n%' and salary < 15000;

-- 25. Display employees whose FIRSTNAME length = 6 and CITY ends with ‘AR’.
select * from employee
where firstname like '______' and city like '%AR%';

-- PART C:

-- 26. Display employees whose FIRSTNAME ends with a vowel, department name start with vowel, and
--     SALARY is between 10000 and 15000.
select * from employee
where firstname like '%[aeiou]' and department like '[aeiou]%' and salary between 10000 and 15000 ;

-- 27. Display employees whose LASTNAME contains ‘A’ at least twice, gender is male, and SALARY is not equal to 14000.
select * from employee
where lastname like '%A%A%' and gender = 'male' and salary != 14000;

-- 28. Display employees whose FIRSTNAME second character is vowel and LASTNAME ends with ‘R’ and
--     SALARY less than 12000.
select * from employee
where firstname like '_[aeiou]%' and lastname like '%R' and salary < 12000;

-- 29. Display employees whose CITY is NOT NULL and FIRSTNAME does not start with vowel and DEPARTMENT
--     not in (‘HR’, ‘IT’)
select * from employee
where city is not null 
		and firstname like '[^aeiou]%' 
		and department not in ('HR', 'IT');

-- 30. Display employees whose CITY is not NULL, FIRSTNAME ends with vowels, and DEPARTMENT is neither
--     ‘HR’ nor ‘IT’.
select * from employee
where city is not null
and firstname like '%[aeiou]'
and department not in ('HR', 'IT');