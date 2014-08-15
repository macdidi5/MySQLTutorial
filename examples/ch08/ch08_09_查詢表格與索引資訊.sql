SHOW TABLES FROM world


SHOW TABLES FROM world LIKE '%y'


SELECT TABLE_SCHEMA, TABLE_NAME, ENGINE, TABLE_ROWS,
       AUTO_INCREMENT,TABLE_COLLATION
FROM   information_schema.TABLES
WHERE  TABLE_SCHEMA = 'world'


DESCRIBE world.country


DESC world.country


SHOW COLUMNS FROM world.country


SHOW FIELDS FROM world.country


SHOW CREATE TABLE world.country


SHOW INDEX FROM addressbook
