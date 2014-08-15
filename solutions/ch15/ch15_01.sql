================ Trigger: pet_after_insert =====================

DELIMITER $$

DROP TRIGGER IF EXISTS pet_after_insert$$

CREATE TRIGGER pet_after_insert AFTER INSERT ON pet FOR EACH ROW
BEGIN
  INSERT INTO petlog (message) VALUES ('New Pet!');
END$$

DELIMITER ;

=================================================================


SELECT * FROM petlog
