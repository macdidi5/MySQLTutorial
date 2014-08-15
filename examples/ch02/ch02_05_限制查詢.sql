
SELECT empno, ename 
FROM   cmdev.emp 
LIMIT  5


SELECT empno, ename 
FROM   cmdev.emp 
LIMIT  5, 5


SELECT   empno, ename, salary
FROM     cmdev.emp
ORDER BY salary DESC
LIMIT    3


SELECT   empno, ename, salary
FROM     cmdev.emp
ORDER BY salary ASC
LIMIT    3


SELECT Continent FROM country


SELECT ALL Continent FROM country


SELECT DISTINCT Continent FROM country