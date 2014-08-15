CREATE VIEW CountryMaxGNP AS
SELECT Name, GNP
FROM   country
WHERE  (Region, GNP) IN ( SELECT   Region, MAX(GNP)
                          FROM     country
                          GROUP BY Region )


CREATE VIEW CountryMaxGNP AS
SELECT Code, Name, GNP
FROM   country
WHERE  (Region, GNP) IN ( SELECT   Region, MAX(GNP)
                          FROM     country
                          GROUP BY Region )


CREATE OR REPLACE VIEW CountryMaxGNP AS
SELECT Code, Name, GNP
FROM   country
WHERE  (Region, GNP) IN ( SELECT   Region, MAX(GNP)
                          FROM     country
                          GROUP BY Region )


DESC CountryMaxGNP


SELECT co.Name, ci.Name, co.Population, ci.Population,
       ROUND(ci.Population / co.Population, 2) Scale
FROM   country co, city ci
WHERE  co.Code = ci.CountryCode


CREATE VIEW ScaleView AS
SELECT co.Name, ci.Name, co.Population, ci.Population,
       ROUND(ci.Population / co.Population, 2) Scale
FROM   country co, city ci
WHERE  co.Code = ci.CountryCode


CREATE VIEW ScaleView AS
SELECT co.Name CountryName, ci.Name CityName,
       co.Population CountryPop, ci.Population CityPop,
       ROUND(ci.Population / co.Population, 2) Scale
FROM   country co, city ci
WHERE  co.Code = ci.CountryCode


CREATE VIEW ScaleView 
(CountryName, CityName, CountryPop, CityPop, Scale)
AS
SELECT co.name, ci.Name, co.Population, ci.Population,
       ROUND(ci.Population / co.Population, 2) Scale
FROM   country co, city ci
WHERE  co.Code = ci.CountryCode
