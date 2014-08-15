UPDATE cmdev.myemp SET lastname = 'Newman'
WHERE  id IN (1, 3)


UPDATE cmdev.myemp SET salary = 1000
WHERE  salary < 1000


UPDATE   cmdev.myemp
SET      salary = salary + 550
ORDER BY birthdate
LIMIT    2


SELECT * FROM cmdev.myemp
