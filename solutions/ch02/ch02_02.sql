SELECT CountryCode, Name, Population 
FROM   city 
WHERE  Population > 5000000


SELECT CountryCode, Name, Population
FROM   city
WHERE  Population >= 1000000 AND
       Population <= 2000000


SELECT CountryCode, Name, Population
FROM   city
WHERE  Population >= 1000000 AND
       Population <= 2000000 AND
       CountryCode = 'JPN'
