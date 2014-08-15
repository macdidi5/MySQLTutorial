================ Stored Procedure: mylab.MYCONDITION ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.MYCONDITION $$
CREATE PROCEDURE mylab.MYCONDITION ( p_name VARCHAR(30), p_owner VARCHAR(30),
                                     p_species VARCHAR(30), p_gender CHAR(1),
                                     p_birth DATE )
BEGIN
  DECLARE c_null CONDITION FOR 1048;

  DECLARE EXIT HANDLER FOR c_null
  BEGIN
    SELECT 'Cannot be null!!' AS Error;
  END;

  INSERT INTO pet VALUES (0, p_name, p_owner, p_species, p_gender, p_birth);

  SELECT * FROM pet WHERE id = LAST_INSERT_ID();
END $$

DELIMITER ;

=================================================================


CALL MYCONDITION('Misty', 'Nicole', 'Cat', 'f', '2000-5-9')


CALL MYCONDITION(NULL, 'Nicole', 'Snake', 'f', '2000-6-13')
