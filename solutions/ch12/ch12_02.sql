================ Stored Procedure: mylab.HELLO ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.CountPetEvent $$
CREATE PROCEDURE mylab.CountPetEvent (IN p_id BIGINT, OUT p_count INT)
BEGIN
  SELECT COUNT(*) INTO p_count
  FROM   event
  WHERE  id = p_id;
END $$

DELIMITER ;

===============================================================


CALL CountPetEvent(4, @my_count)


SELECT @my_count
