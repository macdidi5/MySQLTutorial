================ Stored Procedure: mylab.MYHANDLER ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.MYHANDLER $$
CREATE PROCEDURE mylab.MYHANDLER ( p_name VARCHAR(30), p_owner VARCHAR(30),
                                   p_species VARCHAR(30), p_gender CHAR(1),
                                   p_birth DATE )
BEGIN
  DECLARE EXIT HANDLER FOR 1048
  BEGIN
    SELECT 'Cannot be null!!' AS Error;
  END;

  INSERT INTO pet VALUES (0, p_name, p_owner, p_species, p_gender, p_birth);

  SELECT * FROM pet WHERE id = LAST_INSERT_ID();
END $$

DELIMITER ;

=================================================================


CALL MYHANDLER('Nancy', 'Bruce', 'Cat', 'm', '2000-3-12')


CALL MYHANDLER(NULL, 'Simon', 'Snake', 'm', '2000-2-21')
