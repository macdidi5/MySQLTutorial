SET sql_mode='IGNORE_SPACE'


SELECT ename,hiredate,DATEDIFF('2007-01-01',hiredate) days
FROM   emp


SELECT LPAD(Name, 50, ' ')
FROM   country
WHERE  Continent='Antarctica'


SELECT   LEFT('ABCDE', 2), RIGHT('ABCDE', 2),
         SUBSTRING('ABCDE', 2), SUBSTRING('ABCDE', 2, 3)


SELECT Name || ', ' || Continent || ', ' || Region
FROM   country


SELECT CONCAT_WS(', ', Name, Continent, Region)
FROM   country


SELECT   Name, LENGTH(Name) length
FROM     country
ORDER BY length DESC


SELECT LEFT(Name, LOCATE(' ', Name) - 1) NameOfFirstWord
FROM   country
WHERE  LOCATE(' ', Name) <> 0


SELECT ROUND(3.14159), ROUND(3.14159, 3),
       CEIL(3.14159), FLOOR(3.14159)


SELECT   Name
FROM     country
ORDER BY RAND()
LIMIT    3


SELECT   Name, YEAR(CURDATE()) - IndepYear years
FROM     country
ORDER BY years DESC


SELECT YEAR(hiredate) hire_year,
       MONTH(hiredate) hire_month,
       DAY(hiredate) hire_day
FROM   cmdev.emp


SELECT EXTRACT(YEAR FROM hiredate) hire_year,
       EXTRACT(MONTH FROM hiredate) hire_month,
       EXTRACT(DAY FROM hiredate) hire_day
FROM   cmdev.emp


SELECT ename, hiredate,
       ADDDATE(hiredate, 30),
       ADDDATE(hiredate, INTERVAL 30 DAY)
FROM   cmdev.emp e;


SELECT   ename, hiredate,
         IF( YEAR(hiredate) < 1985, 'Senior', 'General') grade
FROM     cmdev.emp
ORDER BY hiredate


SELECT   ename, hiredate,
         salary * IF( YEAR(hiredate) < 1985, 2.5, 1.2) bonus
FROM     cmdev.emp
ORDER BY hiredate


SELECT   ename, salary,
         CASE
           WHEN salary >= 3000 THEN 'A'
           WHEN salary >= 1000 AND salary <= 2999 THEN 'B'
           WHEN salary < 1000 THEN 'C'
         END SalaryGrade
FROM     cmdev.emp
ORDER BY salary DESC


SELECT   ename, salary,
         CASE
           WHEN salary >= 3000 THEN 'A'
           WHEN salary >= 1000 AND salary <= 2999 THEN 'B'
           ELSE 'C'
         END SalaryGrade
FROM     cmdev.emp
ORDER BY salary DESC


SELECT   ename, salary, salary *
         CASE
           WHEN salary >= 3000 THEN 2.5
           WHEN salary >= 1000 AND salary <= 2999 THEN 1.5
           ELSE 1.2
         END bonus
FROM     cmdev.emp
ORDER BY salary DESC


SELECT Name, Continent,
       CASE Continent
         WHEN 'Asia' THEN 'AS'
         WHEN 'Europe' THEN 'EU'
         WHEN 'Africa' THEN 'AF'
         WHEN 'Oceania' THEN 'OA'
         WHEN 'Antarctica' THEN 'AN'
         WHEN 'North America' THEN 'NA'
         WHEN 'South America' THEN 'SA'
       END ContinentCode
FROM country


SELECT Name, Continent,
       CASE
         WHEN Continent='Asia' THEN 'AS'
         WHEN Continent='Europe' THEN 'EU'
         WHEN Continent='Africa' THEN 'AF'
         WHEN Continent='Oceania' THEN 'OA'
         WHEN Continent='Antarctica' THEN 'AN'
         WHEN Continent='North America' THEN 'NA'
         WHEN Continent='South America' THEN 'SA'
       END ContinentCode
FROM country


SELECT ename, salary, comm, salary + comm FullSalary
FROM   cmdev.emp


SELECT ename,salary,comm,salary + IFNULL(comm, 0) FullSalary
FROM   cmdev.emp
