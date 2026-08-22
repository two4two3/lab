--Lab 9 Perform SQL Queries Using GROUP BY with HAVING Clause and ORDER BY
--	Part – A:
--1. Display cities where total salary of employees greater than 20000.
select city, SUM(salary) as Total_Salary from employee
group by city
having SUM(salary) > 20000;

--2. Display departments having average salary greater than 12000.
select department, AVG(salary) as Avg_Salary from employee
group by department
having AVG(salary) > 12000;

--3. Display departments having total salary greater than 20000.
select department, SUM(salary) as Total_Salary from employee
group by department
having SUM(salary) > 20000;

--4. Display departments having number of employees greater than 2.
select department, COUNT(*) as Total_Emp from employee
group by department
having COUNT(*) > 2;

--5. Display cities where minimum salary less than 7000.
select city, MIN(salary) as Min_Salary from employee
group by city
having MIN(salary) < 7000;

--6. Display cities where average salary less than 12000.
select city, AVG(salary) as Avg_Salary_lt_12k from employee
group by city
having AVG(salary) < 12000;

--7. Display departments where maximum salary greater than 14000.
select department, MAX(salary) as Max_Salary_gt_14k from employee
group by department
having MAX(salary) > 14000;

--8. Display cities where total salary greater than equal to 30000.
select city, SUM(salary) as total_Salary_gte_30k from employee
group by city
having SUM(salary) >= 30000;

--9. Display departments having number of employees equal to 2.
select department, count(*) as number_of_emp_et_2 from employee
group by department
having COUNT(*) = 2;

--10. Display cities having number of female employees greater than equal to 1.
select city, count(*) as number_of_female_gte_1 from employee
where gender = 'FEMALE'
group by city
having COUNT(*) >= 1;

--11. Display departments where minimum salary of male employees greater than 7000.
select department, min(salary) as min_salary_of_male_gt_7k from employee
where gender = 'MALE'
group by department
having min(salary) > 7000;

--12. Display cities where maximum salary of female employees less than 13000.
select city, max(salary) as max_salary_of_female_lt_13k from employee
where gender = 'FEMALE'
group by city
having max(salary) < 13000;

--13. Display departments where average salary greater than 10000 and less than 14000.
select department, avg(salary) as avg_salary_gt_10k_lt_14k from employee
group by department
having avg(salary) > 10000 and avg(salary) < 14000;

--14. Display cities where number of employees joined before 2023 greater than 1.
select city, count(*) as total_emp_joined_before_2k23_gt_1 from employee
where joiningyear < 2023
group by city
having COUNT(*) > 1;

--15. Display cities where total salary of male employees greater than 15000, ordered by total salary.
select city, SUM(salary) as total_slry_of_Male_gt15k from employee
where gender='MALE'
group by city
having SUM(salary) > 15000
ORDER BY total_slry_of_Male_gt15k;

--16. Display departments where maximum salary greater than 13000, ordered by max salary.
select department, MAX(salary) as max_slry_gt13k from employee
group by department
having MAX(salary) > 13000
ORDER BY MAX(salary);

--17. Display cities where total salary of male employees greater than 15000.
select city, SUM(salary) as total_slry_male_gt15k from employee
where gender='MALE'
group by city
having SUM(salary) > 15000;

--18. Display departments where employees joined after 2022 and count greater than 1.
select department, count(*) as emp_joined_gt2k22_COUNTgt1 from employee
where joiningyear > 2022
group by department
having COUNT(*) > 1;

--19. Display departments where average salary of female employees greater than 8000.
select department, AVG(salary) as avg_slr_female_gt8k from employee
where gender = 'FEMALE'
group by department
having AVG(salary) > 8000;

--20. Display departments having total salary greater than 20000 and less than 40000. 
select department, SUM(salary) as total_slr_gt20k_lt40k from employee
group by department
having SUM(salary) > 20000 and SUM(salary) < 40000;


--Part – B:
--21. Display departments having total salary of employees joined after 2021 greater than 20000.
select department, SUM(salary) as total_slr_gt20k_joined_gt2k21 from employee
where joiningyear > 2021
group by department
having SUM(salary) > 20000;

--22. Display cities where average salary of employees joined after 2022 greater than 10000.
select city, AVG(salary) as avg_slr_gt10k_joined_gt2k22 from employee
where joiningyear > 2022
group by city
having AVG(salary) > 10000;

--23. Display cities having number of distinct departments greater than 1.
select city, COUNT(distinct department) as unique_dep_gt1 from employee
group by city
having COUNT(distinct department) > 1;

--24. Display cities where maximum salary of employees joined before 2022 greater than 12000.
select city, MAX(salary) as max_slr_gt12k_joined_lt2k22 from employee
group by city
having MAX(salary) > 12000;

--25. Display departments where total salary of female employees less than 15000.
select department, SUM(salary) as total_female_slr_lt15k from employee
where gender='FEMALE'
group by department
having SUM(salary) < 15000;

--Part – C:
--26. Display cities where number of male employees greater than female employees.
select CITY from employee
group by city
having sum(case when gender='male' then 1 else 0 end) > 
sum(case when gender='female' then 1 else 0 end)

--27. Display departments having number of cities greater than 1.
select department, COUNT(city) as nof_city from employee
group by department
having COUNT(city) > 1;

--28. Display cities where total salary excluding IT department greater than 15000.
select city, SUM(salary) as total_slr_excl_it_gt15k from employee
where department != 'IT'
group by city
having SUM(salary) > 15000;

--29. Display departments where average salary excluding HR employees greater than 11000.
select department, AVG(salary) as avg_slr_excl_hr_gt11k from employee
where department != 'HR'
group by department
having avg(salary) > 11000;

--30. Display departments where total salary of male employees greater than female employees. 
select department from employee
group by department
having SUM(case when gender='male' then salary else 0 end) 
> SUM(case when gender='female' then salary else 0 end)