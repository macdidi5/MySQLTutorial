================ Stored Function: mylab.HELLO ================

DELIMITER $$

DROP FUNCTION IF EXISTS mylab.HELLO $$
CREATE FUNCTION mylab.HELLO ( p_name VARCHAR(24) ) RETURNS VARCHAR(32)
BEGIN
  RETURN CONCAT('Hello! ', p_name, '!');
END $$

DELIMITER ;

===============================================================


SELECT HELLO('Simon')
