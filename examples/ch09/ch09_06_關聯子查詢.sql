SELECT Continent, Name, GNP
FROM   country
WHERE  (Continent, GNP) IN ( SELECT   Continent, MAX(GNP)
                             FROM     country
                             GROUP BY Continent )


SELECT Continent, Name, GNP
FROM   country oc
WHERE  GNP = ( SELECT MAX(GNP)
               FROM   country
               WHERE  Continent = oc.Continent )


SELECT Name
FROM   country c
WHERE  EXISTS ( SELECT *
                FROM   city
                WHERE  CountryCode = c.Code AND
                       Population > 8000000 )


SELECT Name
FROM   country c
WHERE  NOT EXISTS ( SELECT *
                    FROM   city
                    WHERE  CountryCode = c.Code AND
                           Population > 8000000 )
