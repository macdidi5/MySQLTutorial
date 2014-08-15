SELECT   Code, Name, Population
FROM     country
WHERE    Region = 'Middle East'
ORDER BY Population


SELECT   Code, Name, Population
FROM     country
WHERE    Region = 'Middle East'
ORDER BY Population DESC


SELECT   Code, Name, Population
FROM     country
WHERE    Region = 'Middle East'
ORDER BY Population DESC
LIMIT    3


SELECT   Code, Name, Population
FROM     country
WHERE    Region = 'Middle East'
ORDER BY Population DESC
LIMIT    4, 6
