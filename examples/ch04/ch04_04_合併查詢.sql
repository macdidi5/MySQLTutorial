SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Southeast Asia' AND Population < 2000000


SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Eastern Asia' AND Population < 1000000


SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Southeast Asia' AND Population < 2000000
UNION
SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Eastern Asia' AND Population < 1000000


SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Southeast Asia' AND Population < 2000000
UNION
SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Eastern Asia' AND Population < 1000000
UNION
SELECT ename, job, salary
FROM   cmdev.emp
WHERE  salary < 1000


SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Southeast Asia' AND Population < 2000000
UNION
SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Eastern Asia' AND Population < 1000000
UNION
SELECT ename, job, salary, comm
FROM   cmdev.emp
WHERE  salary < 1000


SELECT Region, Name, Population
FROM   country
WHERE  (Region = 'Southeast Asia' AND Population < 2000000) OR
       (Region = 'Eastern Asia' AND Population < 1000000)


SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Southeast Asia' AND Population < 2000000
UNION
SELECT Region, Name, Population
FROM   country
WHERE  Region = 'Eastern Asia' AND Population < 1000000
