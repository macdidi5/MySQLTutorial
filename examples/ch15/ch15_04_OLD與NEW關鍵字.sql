DELIMITER $$
DROP TRIGGER IF EXISTS cmdev.emp_before_update$$
CREATE TRIGGER cmdev.emp_before_update BEFORE UPDATE
ON cmdev.emp FOR EACH ROW
BEGIN
    DECLARE v_message VARCHAR(64) DEFAULT 'BEFORE UPDATE: ';
    SET v_message = CONCAT( v_message,
                            OLD.deptno, ' -> ', NEW.deptno);
    INSERT INTO emplog (message) VALUES (v_message);
END $$
DELIMITER ;


UPDATE emp SET comm = 100 WHERE empno = 7369


DELIMITER $$
DROP TRIGGER IF EXISTS cmdev.emp_before_update$$
CREATE TRIGGER cmdev.emp_before_update BEFORE UPDATE
ON cmdev.emp FOR EACH ROW
BEGIN
    DECLARE v_message VARCHAR(64) DEFAULT 'BEFORE UPDATE: ';
    SET v_message = CONCAT( v_message,
                            OLD.deptno, ' -> ', NEW.deptno);
    IF OLD.deptno <> NEW.deptno THEN    
        INSERT INTO emplog (message) VALUES (v_message);
    END IF;
END $$
DELIMITER ;


INSERT INTO cmdev.emp 
VALUES (9001, 'sam', 'salesman', 7698, 
        '2000-01-01', 1000, 100, 30)


DELIMITER $$
DROP TRIGGER IF EXISTS cmdev.emp_before_insert$$
CREATE TRIGGER cmdev.emp_before_insert BEFORE INSERT
ON cmdev.emp FOR EACH ROW
BEGIN
    SET NEW.ename = UPPER(NEW.ename);
    SET NEW.job = UPPER(NEW.job);
END $$
DELIMITER ;


INSERT INTO cmdev.emp 
VALUES (9002, 'mary', 'salesman', 7698, 
        '2001-01-01', 2000, 200, 30)
