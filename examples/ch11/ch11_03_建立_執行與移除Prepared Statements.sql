PREPARE my_country FROM
'SELECT Code, Name, GNP FROM world.country WHERE Code = ?';


SET @my_code = 'USA';


EXECUTE my_country USING @my_code;


SET @my_code = 'JPN';


mysql> EXECUTE my_country USING @my_code;


DEALLOCATE PREPARE my_country;
