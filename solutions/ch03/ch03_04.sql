SELECT   job, SUM(salary) Sum, AVG(salary) Average,
         MAX(salary) Maximum, MIN(salary) Minimum
FROM     cmdev.emp
GROUP BY job


SELECT   Region, COUNT(*) 'Number of countries'
FROM     country
GROUP BY Region


SELECT   Region, COUNT(*) 'Number of countries'
FROM     country
GROUP BY Region
HAVING   COUNT(*) > 12


SELECT job, SUM(CASE deptno WHEN 10 THEN salary ELSE 0 END) 'Dept 10',
            SUM(CASE deptno WHEN 20 THEN salary ELSE 0 END) 'Dept 20',
            SUM(CASE deptno WHEN 30 THEN salary ELSE 0 END) 'Dept 30',
            SUM(salary) Total
FROM   cmdev.emp
GROUP BY job
