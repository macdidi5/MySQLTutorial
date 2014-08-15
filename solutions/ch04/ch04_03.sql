SELECT 'Minimum' AS 'Asia', MIN(Population) Population
FROM   country
WHERE  Continent = 'Asia'
UNION
SELECT 'Maximum', MAX(Population) Population
FROM   country
WHERE  Continent = 'Asia'
