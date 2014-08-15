DELIMITER $$
CREATE TRIGGER cmdev.emp_before_update BEFORE UPDATE
ON cmdev.emp FOR EACH ROW
BEGIN
    INSERT INTO emplog (message)
    VALUES ('BEFORE UPDATE!');
END $$
DELIMITER ;


UPDATE emp SET comm = 100 WHERE empno = 7844


UPDATE emp
SET    salary = salary + 100
WHERE  deptno = 10


UPDATE emp SET comm = 100 WHERE empno = 9999
