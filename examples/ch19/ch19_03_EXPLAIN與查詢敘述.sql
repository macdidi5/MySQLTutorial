EXPLAIN
SELECT * FROM country WHERE GNP < 10000


EXPLAIN
SELECT * FROM country WHERE Code = 'TWN'


EXPLAIN
SELECT Name
FROM   country
WHERE  Continent = ( SELECT Continent
                     FROM   country
                     WHERE  Code = 'TWN' )

EXPLAIN
SELECT *
FROM   test2
WHERE  YEAR(birthdate) = 1990


EXPLAIN
SELECT *
FROM   test2
WHERE  birthdate >= '1990-1-1' AND birthdate <= '1990-12-31'
