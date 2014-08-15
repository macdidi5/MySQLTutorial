SELECT Name, Continent, Population
FROM   country
WHERE  Continent='Europe' AND Population<10000


SELECT Population * 10000000000, Population * 100000000000
FROM   world.country
WHERE  Code='USA'


SELECT 0.098765432109876543210987654321 / 2


SELECT 0.1 + 0.1 = 0.2, 0.1E0 + 0.1E0 = 0.2E0


SELECT 0.1 + 0.2 = 0.3, 0.1E0 + 0.2E0 = 0.3E0


SELECT 1+'2', '1'+2, '1E+2'+'2E-2'


SELECT 1+'A', 'B'+2


SELECT 'Hello!' || 'MySQL!'


SET sql_mode = 'PIPES_AS_CONCAT'


SELECT 'Hello!' || 'MySQL!'


SELECT NULL = NULL, NULL < NULL, NULL != NULL, NULL + 3


SELECT NULL IS NULL, NULL IS NOT NULL, NULL <=> NULL
