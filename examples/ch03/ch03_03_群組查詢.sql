SELECT SUM(Population) PopSum, 
       AVG(Population) PopAvg,
       MAX(Population) PopMax, 
       Min(Population) PopMin,
       COUNT(*) Amount
FROM   country


SELECT MIN(hiredate) FirstHireDate, MAX(hiredate) LastHireDate
FROM   cmdev.emp


SELECT COUNT(*), COUNT(Code), COUNT(IndepYear), COUNT(LifeExpectancy)
FROM   country


SELECT COUNT(*), COUNT(comm), COUNT(deptno)
FROM   cmdev.emp


SELECT dname
FROM   cmdev.dept


SELECT GROUP_CONCAT(dname)
FROM   cmdev.dept


SELECT GROUP_CONCAT(dname ORDER BY dname)
FROM   cmdev.dept


SELECT GROUP_CONCAT(dname ORDER BY dname SEPARATOR '|')
FROM   cmdev.dept


SELECT Region
FROM   country
WHERE  Continent = 'Europe'


SELECT DISTINCT Region
FROM   country
WHERE  Continent = 'Europe'


SELECT GROUP_CONCAT(Region)
FROM   country
WHERE  Continent = 'Europe'


SELECT GROUP_CONCAT(DISTINCT Region)
FROM   country
WHERE  Continent = 'Europe'


SELECT   Population
FROM     country


SELECT   SUM(Population) PopSum
FROM     country


SELECT   Continent, SUM(Population) PopSum
FROM     country
GROUP BY Continent


SELECT   Continent, SUM(Population) PopSum
FROM     country
GROUP BY Continent


SELECT   Region, SUM(Population) PopSum
FROM     country
GROUP BY Region


SELECT   GovernmentForm, SUM(Population) PopSum
FROM     country
GROUP BY GovernmentForm


SELECT   Continent, COUNT(*) Amount
FROM     country
GROUP BY Continent


SELECT   Region, COUNT(*) Amount
FROM     country
GROUP BY Region


SELECT   GovernmentForm, COUNT(*) Amount
FROM     country
GROUP BY GovernmentForm


SELECT   GovernmentForm, COUNT(*) Amount, SUM(Population) PopSum,
         AVG(Population) PopAvg
FROM     country
GROUP BY GovernmentForm


SELECT   Continent, Region, SUM(Population) PopSum
FROM     country
GROUP BY Continent, Region


SELECT   GovernmentForm, COUNT(*) Amount
FROM     country
GROUP BY GovernmentForm


SELECT   GovernmentForm, COUNT(*) Amount
FROM     country
GROUP BY GovernmentForm ASC


SELECT   GovernmentForm, COUNT(*) Amount
FROM     country
GROUP BY GovernmentForm DESC


SELECT   GovernmentForm, COUNT(*) Amount
FROM     country
GROUP BY GovernmentForm


SELECT   Continent, COUNT(*) Amount
FROM     country
GROUP BY Continent WITH ROLLUP


SELECT   Continent, COUNT(*) Amount, SUM(Population) PopSum
FROM     country
GROUP BY Continent WITH ROLLUP


SELECT   Continent, Region, COUNT(*) Amount
FROM     country
GROUP BY Continent, Region WITH ROLLUP


SELECT   Region, SUM(Population)
FROM     country
WHERE    Continent = 'Asia'
GROUP BY Region


SELECT   Region, SUM(Population)
FROM     country
WHERE    SUM(Population) > 100000000
GROUP BY Region


SELECT   Region, SUM(Population)
FROM     country
GROUP BY Region
HAVING   SUM(Population) > 100000000


SELECT   Continent, Region, COUNT(*) Amount
FROM     country
GROUP BY Continent


SET sql_mode = 'ONLY_FULL_GROUP_BY'


SELECT   Continent, Region, COUNT(*) Amount
FROM     country
GROUP BY Continent
