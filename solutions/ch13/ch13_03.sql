CREATE TABLE testloop (
  number INT
)


================ Stored Procedure: mylab.MYWHILE ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.MYWHILE $$
CREATE PROCEDURE mylab.MYWHILE ()
BEGIN
  DECLARE v_rec_count INT;
  DECLARE v_start INT;
  DECLARE v_end INT;

  SELECT COUNT(*) INTO v_rec_count FROM testloop;

  SET v_start = v_rec_count + 1;
  SET v_end = v_start + 3;

  WHILE v_start < v_end DO
    INSERT INTO testloop VALUES (v_start);
    SET v_start = v_start + 1;
  END WHILE;

  SELECT * FROM testloop;
END $$

DELIMITER ;

=================================================================


CALL MYWHILE()


CALL MYWHILE()
