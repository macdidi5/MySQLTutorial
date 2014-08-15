CREATE PROCEDURE cmdev.test_handler ( p_deptno INT,
                                      p_dname VARCHAR(16),
                                      p_location VARCHAR(16) )
BEGIN
    INSERT INTO cmdev.dept 
    VALUES (p_deptno, p_dname, p_location);
    SELECT 'Success!';
END


CALL test_handler(901,'Newdept','Newloc')


CALL test_handler(901,'Newdept2','Newloc2')


CREATE PROCEDURE cmdev.test_handler2( p_deptno INT,
                                      p_dname VARCHAR(16),
                                      p_location VARCHAR(16) )
BEGIN
    DECLARE EXIT HANDLER FOR SQLSTATE '23000'
    BEGIN
        SELECT 'Error!';
    END;
    INSERT INTO cmdev.dept 
    VALUES (p_deptno, p_dname, p_location);
    SELECT 'Success!';
END


CREATE PROCEDURE cmdev.test_handler3( p_deptno INT,
                                      p_dname VARCHAR(16),
                                      p_location VARCHAR(16) )
BEGIN
    DECLARE v_message VARCHAR(64) DEFAULT 'Success!';
    DECLARE CONTINUE HANDLER FOR SQLSTATE '23000'
    BEGIN
        SET v_message = 'Error!';
    END;
    INSERT INTO cmdev.dept
    VALUES (p_deptno, p_dname, p_location);
    INSERT INTO cmdev.deptlog (message) VALUES (v_message);
END


CALL test_handler3(902,'Newdept','Newloc')


CALL test_handler3(902,'Newdept','Newloc')


CALL test_handler3(903, NULL,'Newloc')


CREATE PROCEDURE cmdev.test_handler4( p_deptno INT,
                                      p_dname VARCHAR(16),
                                      p_location VARCHAR(16) )
BEGIN
    DECLARE v_messgae VARCHAR(64) DEFAULT 'Success!';
    DECLARE CONTINUE HANDLER FOR 1048
    BEGIN
        SET v_messgae = 'Cannot be null!';
    END;
    DECLARE CONTINUE HANDLER FOR 1062
    BEGIN
        SET v_messgae = 'Duplicate key!';
    END;
    INSERT INTO cmdev.dept
    VALUES (p_deptno, p_dname, p_location);
    INSERT INTO deptlog (message) VALUES (v_messgae);
END


CALL test_handler4(905,'Newdept','Newloc')


CALL test_handler4(905,'Newdept','Newloc')


CALL test_handler4(906, NULL,'Newloc')
