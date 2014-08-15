================ Stored Procedure: mylab.MYLOOP ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.MYLOOP $$
CREATE PROCEDURE mylab.MYLOOP ()
BEGIN
  DECLARE v_rec_count INT;
  DECLARE v_start INT;
  DECLARE v_end INT;

  SELECT COUNT(*) INTO v_rec_count FROM testloop;

  SET v_start = v_rec_count + 1;
  SET v_end = v_start + 3;

  new_rec: LOOP
    INSERT INTO testloop VALUES (v_start);
    SET v_start = v_start + 1;

    IF v_start = v_end THEN
        LEAVE new_rec;
    END IF;
  END LOOP new_rec;

  SELECT * FROM testloop;
END $$

DELIMITER ;

=================================================================


CALL MYLOOP()


CALL MYLOOP()
