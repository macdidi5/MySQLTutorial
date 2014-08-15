================ Stored Function: mylab.MYMAX ================

DELIMITER $$

DROP FUNCTION IF EXISTS mylab.MYMAX $$
CREATE FUNCTION mylab.MYMAX (p_num INT, p_num2 INT) RETURNS INT
BEGIN
  DECLARE v_return INT;

  IF p_num > p_num2 THEN
    SET v_return = p_num;
  ELSE
    SET v_return = p_num2;
  END IF;

  RETURN v_return;
END $$

DELIMITER ;

===============================================================


SELECT MYMAX(3, 5)
