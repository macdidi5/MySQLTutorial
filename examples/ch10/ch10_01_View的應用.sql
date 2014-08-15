SELECT   Continent, Region, Code, Code2, Name
FROM     country
ORDER BY Continent, Region, Code


CREATE VIEW CountryView AS
SELECT   Continent, Region, Code, Code2, Name
FROM     country
ORDER BY Continent, Region, Code


SELECT * FROM CountryView


SELECT   Continent, COUNT(*)
FROM     CountryView
GROUP BY Continent


SELECT Name, Language
FROM   CountryView, countrylanguage
WHERE  Code = CountryCode
