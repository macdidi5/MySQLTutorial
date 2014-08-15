SELECT Population
FROM   country
WHERE  Code = 'USA'


SELECT Code, Population
FROM   country
WHERE  Population > 278357000


SELECT Code, Population
FROM   country
WHERE  Population > ( SELECT Population
                      FROM   country
                      WHERE  Code = 'USA' )
