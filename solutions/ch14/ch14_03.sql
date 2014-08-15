================ Stored Procedure: mylab.MYCONDITION ================

DELIMITER $$

DROP PROCEDURE IF EXISTS mylab.MYCURSOR $$
CREATE PROCEDURE mylab.MYCURSOR ( p_species VARCHAR(30) )
BEGIN
  DECLARE v_spring INT DEFAULT 0;
  DECLARE v_summer INT DEFAULT 0;
  DECLARE v_autumn INT DEFAULT 0;
  DECLARE v_winter INT DEFAULT 0;
  DECLARE v_birth DATE;

  DECLARE cur_pet CURSOR FOR
    SELECT birth FROM pet WHERE species = p_species;

  OPEN cur_pet;

  BEGIN
    DECLARE EXIT HANDLER FOR 1329 BEGIN END;

    LOOP
      FETCH cur_pet INTO v_birth;

      CASE QUARTER(v_birth)
        WHEN 1 THEN SET v_spring = v_spring + 1;
        WHEN 2 THEN SET v_summer = v_summer + 1;
        WHEN 3 THEN SET v_autumn = v_autumn + 1;
        WHEN 4 THEN SET v_winter = v_winter + 1;
      END CASE;
    END LOOP;
  END;

  SELECT p_species AS Species, 
         v_spring AS Spring, v_summer As Summer, 
	 v_autumn AS Autumn, v_winter AS Winter;
END $$

DELIMITER ;

=================================================================


CALL MYCURSOR('dog')


CALL MYCURSOR('cat')
