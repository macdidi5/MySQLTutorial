SELECT   Continent, co.Code, co.Name CountryName,
         ci.Name CapitalName, ci.Population CapitalPop
FROM     country co, city ci
WHERE    co.Capital = ci.ID
ORDER BY Continent, CountryName


SELECT   Continent, co.Code, co.Name CountryName,
         ci.Name CapitalName, ci.Population CapitalPop
FROM     country co, city ci
WHERE    co.Capital = ci.ID AND ci.Population < 50000
ORDER BY Continent, CountryName


SELECT   Continent, co.Code, co.Name CountryName,
         ci.Name CapitalName, ci.Population CapitalPop,
         cola.Language OfficalLanguage
FROM     country co, city ci, countrylanguage cola
WHERE    co.Capital = ci.ID AND co.Code = cola.CountryCode
         AND ci.Population < 50000 AND IsOfficial = 'T'
ORDER BY Continent, CountryName


CREATE TABLE countrycapital
SELECT   Continent, co.Code, co.Name CountryName,
         ci.Name CapitalName, ci.Population CapitalPop
FROM     country co, city ci
WHERE    co.Capital = ci.ID
ORDER BY Continent, CountryName


SELECT *
FROM   countrycapital
WHERE  CapitalPop < 5000


SELECT cc.*, cola.Language OfficalLanguage
FROM   countrycapital cc, countrylanguage cola
WHERE  cc.Code = cola.CountryCode AND
       CapitalPop < 5000 AND IsOfficial = 'T'


SELECT cc.*, cola.Language OfficalLanguage
FROM   (SELECT   Continent, co.Code, co.Name CountryName,
                 ci.Name CapitalName, ci.Population CapitalPop
        FROM     country co, city ci
        WHERE    co.Capital = ci.ID
        ORDER BY Continent, CountryName) cc, countrylanguage cola
WHERE  cc.Code = cola.CountryCode AND
       CapitalPop < 5000 AND IsOfficial = 'T'