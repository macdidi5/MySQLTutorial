SELECT   Name, GNP
FROM     ( SELECT *
           FROM   country
           WHERE  Continent = 'Asia' ) asiacountry
ORDER BY GNP DESC
LIMIT    10


SELECT Name, Language, Population * Percentage
FROM   country, ( SELECT CountryCode, Language, Percentage
                  FROM   countrylanguage
                  WHERE  IsOfficial = 'T' ) officiallanguage
WHERE  Code = CountryCode
