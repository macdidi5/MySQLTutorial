DELIMITER $$
CREATE PROCEDURE show_countries ( )
SELECT * FROM country; $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE my_world_count ( )
BEGIN
    SELECT COUNT(*) countrycount FROM country;
    SELECT COUNT(*) languagecount FROM countrylanguage;
    SELECT COUNT(*) citycount FROM city;
END $$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION my_date ( )
RETURNS VARCHAR(64)
RETURN CONCAT( DATE_FORMAT(CURDATE(), '%Y/%m/%d'), 
               ' ',
               TIME_FORMAT(CURTIME(), '%H:%i:%s'), 
               ' ',
               DAYNAME(CURDATE()) ); $$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION my_date2 ( )
RETURNS VARCHAR(64)
BEGIN
    DECLARE d, t, w VARCHAR(24);
    SET d = DATE_FORMAT(CURDATE(), '%Y/%m/%d');
    SET t = TIME_FORMAT(CURTIME(), '%H:%i:%s');
    SET w = DAYNAME(CURDATE());
    RETURN CONCAT( d, ' ', t, ' ', w );
END $$
DELIMITER ;
