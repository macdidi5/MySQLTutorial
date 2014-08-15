SELECT Code, Name, GNP 
FROM   country 
WHERE  Code = 'USA'


SELECT Code, Name, GNP 
FROM   country 
WHERE  Code = 'JPN'


PREPARE my_country FROM
'SELECT Code, Name, GNP FROM country WHERE Code = ?'


SET @my_code = 'USA'


EXECUTE my_country USING @my_code


SET @my_code = 'JPN'
EXECUTE my_country USING @my_code
