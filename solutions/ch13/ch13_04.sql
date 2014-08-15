================ Stored Procedure: mylab.MYREPEAT ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.MYREPEAT $$
CREATE PROCEDURE mylab.MYREPEAT ()
BEGIN
  DECLARE v_rec_count INT;
  DECLARE v_start INT;
  DECLARE v_end INT;

  SELECT COUNT(*) INTO v_rec_count FROM testloop;

  SET v_start = v_rec_count + 1;
  SET v_end = v_start + 3;

  REPEAT
    INSERT INTO testloop VALUES (v_start);
    SET v_start = v_start + 1;
    UNTIL v_start = v_end
  END REPEAT;

  SELECT * FROM testloop;
END $$

DELIMITER ;

=================================================================


CALL MYREPEAT()


CALL MYREPEAT()
