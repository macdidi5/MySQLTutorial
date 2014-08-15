SELECT *
FROM   city


SELECT *
FROM   city
WHERE  CountryCode = 'TWN'


SELECT *
FROM   city
WHERE  Population < 800


SELECT *
FROM   city
WHERE  Population <= 800


SELECT *
FROM   cmdev.emp
WHERE  hiredate = '1981-09-08'


SELECT *
FROM   cmdev.emp
WHERE  hiredate > '1981-09-08'


SELECT *
FROM   cmdev.emp
WHERE  hiredate < '1981-09-08'


SELECT *
FROM   city
WHERE  CountryCode != 'TWN'


SELECT *
FROM   city
WHERE  NOT CountryCode = 'TWN'


SELECT *
FROM   city
WHERE  CountryCode = 'TWN' AND Population < 100000


SELECT *
FROM   city
WHERE  CountryCode = 'TWN' OR CountryCode='USA'


SELECT Name, Continent, Population
FROM   country
WHERE  Continent='Europe' OR Continent='Africa' AND Population<10000


SELECT Name, Continent, Population
FROM   country
WHERE  (Continent='Europe' OR Continent='Africa') AND Population<10000


SELECT *
FROM   city
WHERE  Population >= 80000 AND Population <= 90000


SELECT *
FROM   city
WHERE  Population BETWEEN 80000 AND 90000


SELECT *
FROM   city
WHERE  Population > 80000 AND Population < 90000


SELECT *
FROM   city
WHERE  Population BETWEEN 80000 AND 90000


SELECT ename, hiredate
FROM   cmdev.emp
WHERE  hiredate BETWEEN '1981-01-01' AND '1981-06-30'


SELECT *
FROM   city
WHERE  CountryCode = 'TWN' OR 
       CountryCode = 'USA' OR
       CountryCode = 'JPN' OR
       CountryCode = 'ITA' OR
       CountryCode = 'KOR'


SELECT *
FROM   city
WHERE  CountryCode IN ('TWN','USA','JPN','ITA','KOR')


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy = NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy IS NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy <=> NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy <> NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy IS NOT NULL


SELECT Name FROM   city WHERE  Name = 'w'


SELECT Name
FROM   city
WHERE  Name LIKE 'w'


SELECT Name
FROM   city
WHERE  Name LIKE 'w%'


SELECT Name
FROM   city
WHERE  Name LIKE 'w%'


SELECT Name
FROM   city
WHERE  Name LIKE '%w'


SELECT Name
FROM   city
WHERE  Name LIKE '%w%'


SELECT Name
FROM   city
WHERE  Name LIKE 'w_____'


SELECT Name
FROM   city
WHERE  Name LIKE '_____w'


SELECT Name
FROM   city
WHERE  Name LIKE '_____w%'


SELECT Name
FROM   city
WHERE  Name LIKE '______________________________%'
