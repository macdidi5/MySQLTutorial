CREATE TABLE test2 (
  birthdate DATE,
  INDEX (birthdate)
)  


SELECT *
FROM   test2
WHERE  YEAR(birthdate) = 1990


SELECT *
FROM   test2
WHERE  birthdate >= '1990-1-1' AND birthdate <= '1990-12-31'


SELECT Name, '2000' - IndepYear
FROM   country
WHERE  GNP < '10000'


SELECT Name, 2000 - IndepYear
FROM   country
WHERE  GNP < 10000


SELECT country.Name, city.Name
FROM   country, city
WHERE  country.Code = city.CountryCode


CREATE INDEX countrycode_index ON city ( CountryCode )


CREATE INDEX name_index ON country ( name )


SELECT * FROM country WHERE name LIKE 'ta%'


SELECT * FROM country WHERE name LIKE '%ta'


SELECT * FROM country WHERE name LIKE '_ta'


SHOW INDEX FROM countrylanguage


SELECT * 
FROM   countrylanguage 
WHERE  CountryCode = 'TWN'


SELECT *
FROM   countrylanguage
WHERE  CountryCode = 'TWN' AND Language = 'Paiwan'


SELECT *
FROM   countrylanguage
WHERE  Language = 'Paiwan'
