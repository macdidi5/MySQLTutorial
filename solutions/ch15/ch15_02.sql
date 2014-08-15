================ Trigger: pet_after_insert =====================

DELIMITER $$

DROP TRIGGER IF EXISTS pet_after_insert$$

CREATE TRIGGER pet_after_insert AFTER INSERT ON pet FOR EACH ROW
BEGIN
  DECLARE v_message VARCHAR(64) DEFAULT 'New Pet! ';
  SET v_message = CONCAT(v_message, NEW.name);
  INSERT INTO petlog (message) VALUES ( v_message );
END$$

DELIMITER ;

=================================================================


================ Trigger: pet_after_update =====================

DELIMITER $$

DROP TRIGGER IF EXISTS pet_after_update$$

CREATE TRIGGER pet_after_update AFTER UPDATE ON pet FOR EACH ROW
BEGIN
  DECLARE v_message VARCHAR(64) DEFAULT 'Update Pet! ';
  SET v_message = CONCAT(v_message, NEW.name);
  INSERT INTO petlog (message) VALUES ( v_message );
END$$

DELIMITER ;

=================================================================


================ Trigger: pet_before_delete =====================

DELIMITER $$

DROP TRIGGER IF EXISTS pet_before_delete$$

CREATE TRIGGER pet_before_delete BEFORE DELETE ON pet FOR EACH ROW
BEGIN
  DECLARE v_message VARCHAR(64) DEFAULT 'Delete Pet! ';
  SET v_message = CONCAT(v_message, OLD.name);
  INSERT INTO petlog (message) VALUES ( v_message );
  DELETE FROM event WHERE id = OLD.id;
END$$

DELIMITER ;

=================================================================


SELECT * FROM petlog
