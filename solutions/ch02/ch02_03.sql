SELECT Continent, Code, Name, Population
FROM   country
WHERE  Continent = 'Asia' OR
       Continent = 'Europe' OR
       Continent = 'Africa'

=================== OR ==========================

SELECT Continent, Code, Name, Population
FROM   country
WHERE  Continent IN ('Asia', 'Europe', 'Africa')


SELECT Continent, Code2, Name
FROM   country
WHERE  Continent = 'Africa' AND
       IndepYear IS NULL


SELECT Code2, Name, Population
FROM   country
WHERE  Name LIKE 'Ta%'


SELECT Code2, Name, Population
FROM   country
WHERE  Name LIKE 'Ta____'
