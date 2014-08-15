================ Stored Function: mylab.MYBONUS ================

DELIMITER $$

DROP FUNCTION IF EXISTS mylab.MYBONUS $$
CREATE FUNCTION mylab.MYBONUS ( p_grade CHAR(1) ) RETURNS INT
BEGIN
  DECLARE v_return INT;

  CASE p_grade
  WHEN 'A' THEN SET v_return = 5000;
  WHEN 'B' THEN SET v_return = 3000;
  WHEN 'C' THEN SET v_return = 1000;
  ELSE          SET v_return = 500;
  END CASE;

  RETURN v_return;
END $$

DELIMITER ;

=================================================================


SELECT MYBONUS('C')
