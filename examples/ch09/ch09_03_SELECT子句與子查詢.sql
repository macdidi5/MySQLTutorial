SELECT CONCAT('The GNP of Japan is ', GNP)
FROM   country
WHERE  Name = 'Japan'


SELECT CONCAT('The GNP of Japan is ',
       ( SELECT GNP FROM country WHERE  Name = 'Japan' ) )


SELECT ( SELECT Population FROM country WHERE Name = 'India' ) /
       ( SELECT SUM(Population) FROM country )
