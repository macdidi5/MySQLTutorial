SELECT Name, GNP
FROM   country
WHERE  GNP = ( SELECT MAX(GNP)
               FROM   country )


SELECT Name, GNP
FROM   country
WHERE  GNP = ( SELECT Code, MAX(GNP)
               FROM   country )


SELECT Name, GNP
FROM   country
WHERE  GNP = ( SELECT   MAX(GNP)
               FROM     country
               GROUP BY Continent )


SELECT CountryCode
FROM   city
WHERE  Population > 9000000


SELECT Name
FROM   country
WHERE  Code IN ('BRA','IDN','IND',
                'CHN','KOR','PAK')


SELECT Name
FROM   country
WHERE  Code IN ( SELECT CountryCode
                 FROM   city
                 WHERE  Population > 9000000 )


SELECT Name
FROM   country
WHERE  Code = ( SELECT CountryCode
                FROM   city
                WHERE  Population > 9000000 )


SELECT Name
FROM   country
WHERE  Code NOT IN ( SELECT CountryCode
                     FROM   city
                     WHERE  Population > 9000000 )


SELECT * FROM outertable


SELECT * FROM innertable


SELECT * 
FROM   outertable
WHERE  n > ALL ( SELECT n
                 FROM   innertable )

SELECT * 
FROM   outertable
WHERE  n <> ALL ( SELECT n
                  FROM   innertable )

SELECT * 
FROM   outertable
WHERE  n NOT IN ( SELECT n
                  FROM   innertable )


SELECT * 
FROM   outertable
WHERE  n = ANY ( SELECT n
                 FROM   innertable )


SELECT * 
FROM   outertable
WHERE  n IN ( SELECT n
              FROM   innertable )


SELECT Name, GNP
FROM   country
WHERE  Continent = 'Asia' AND GovernmentForm = 'Republic'


SELECT Name, GNP
FROM   country
WHERE  ( Continent, GovernmentForm ) = ( 'Asia', 'Republic' )


SELECT Name
FROM   country
WHERE  Region = ( SELECT Region
                  FROM   country
                  WHERE  Name = 'Iraq' )
       AND
       GovernmentForm = ( SELECT GovernmentForm
                          FROM   country
                          WHERE  Name = 'Iraq' )


SELECT Name
FROM   country
WHERE  (Region, GovernmentForm) = ( SELECT Region, GovernmentForm
                                    FROM   country
                                    WHERE  Name = 'Iraq' )


SELECT   Continent, MAX(GNP)
FROM     country
GROUP BY Continent


SELECT Continent, Name, GNP
FROM   country
WHERE  (Continent, GNP) IN ( SELECT   Continent, MAX(GNP)
                             FROM     country
                             GROUP BY Continent )
