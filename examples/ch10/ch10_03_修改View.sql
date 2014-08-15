ALTER VIEW CountryMaxGNP AS
SELECT Continent, Code, Name, GNP
FROM   country
WHERE  (Region, GNP) IN ( SELECT   Region, MAX(GNP)
                          FROM     country
                          GROUP BY Region )


CREATE OR REPLACE VIEW CountryMaxGNP AS
SELECT Continent, Code, Name, GNP
FROM   country
WHERE  (Region, GNP) IN ( SELECT   Region, MAX(GNP)
                          FROM     country
                          GROUP BY Region )
