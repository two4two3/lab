-- LAB 8:
-- Part A:
-- 1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
select max(salary) as Maximum, min(salary) as Minimum from employee;

-- 2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--    respectively.
select SUM(salary) as Total_Sal, AVG(salary) as Average_Sal from employee;

-- 3. Find total number of employees of EMPLOYEE table.
select COUNT(*) as Total_employees from employee;

-- 4. Find highest salary from Rajkot city.
select MAX(salary) as HighestFromRJK from employee
where city='RAJKOT';

-- 5. Give maximum salary from IT department.
select MAX(salary) from employee
where department='IT';

-- 6. Count employee department is HR.
select COUNT(*) from employee
where department='HR';

-- 7. Display average salary of Admin department.
select AVG(salary) from employee
where department='ADMIN';

--8. Display total salary of HR department.
select SUM(salary) from employee
where department='HR';

--9. Count total number of cities of employee without duplication.
select COUNT(distinct city) from employee;

--10. Count unique departments.
select COUNT(distinct department) from employee;

--11. Display minimum salary of employee who belongs to Ahmedabad.
select MIN(salary) from employee
where city='AHMEDABAD';

--12. Find city wise highest salary.
select city, MAX(salary) as Max_Salary_City from employee
group by city;

--13. Find department wise lowest salary.
select department, MIN(salary) as lowest_sal_department from employee
group by department;

--14. Display minimum salary in each city.
select city, MIN(salary) as Min_sal_City from employee
group by city;

--15. Display average salary of employees from Surat.
select AVG(salary) as avg_sal_surat from employee
where city='surat';

--16. Display total salary of female employees.
select SUM(salary) as total_salary_female from employee
where gender = 'FEMALE';

--17. Count number of male employees.
select COUNT(*) as male_emp from employee
where gender='MALE';

--18. Display city with the total number of employees belonging to each city.
select city, COUNT(*) as employees from employee
group by city;

--19. Count number of employees in each city where gender is MALE.
select city, COUNT(*) as male_emp from employee
where gender = 'male'
group by city;

--20. Display maximum salary in each department where city is not Ahmedabad.
select department, MAX(salary) from employee
where city != 'AHMEDABAD'
group by department;

--Part – B:

--21. Display minimum salary in each city where gender is FEMALE.
select city, min(salary) from employee
where gender = 'female'
group by city;

--22. Give total salary of each department of EMPLOYEE table.
select department, sum(salary) from employee
group by department;

--23. Give average salary of each department of EMPLOYEE table without displaying the respective
--    department name.
select avg(salary) from employee
group by department;

--24. Count the number of employees for each department in every city.
select department, city, count(*) as emp from employee
group by department,city;

--25. Calculate the total salary distributed to male and female employees.
select gender, sum(salary) as total_salary from employee
group by gender;


--Part – C:
--26. Give city wise maximum and minimum salary of female employees.
select city, min(salary) as min_sal, max(salary) as max_sal from employee
where gender = 'female'
group by city;

--27. Calculate department, city, and gender wise average salary.
select department, city, gender,AVG(salary) as avg_salary from employee
group by department, city, gender;

--28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select (MAX(salary) - MIN(salary)) as DIFFERENCE from employee
select * from employee;

--29. Display sum of salaries of department wise where department name consist 5 letter.
select department, SUM(salary) as sum_of_salary from employee
where department like '_____'
group by department;

--30. Find the Maximum salary department & city wise in which city name starts with ‘R’.
select department, city, Max(salary) as max_sal from employee
where city like 'R%'
group by department, city;