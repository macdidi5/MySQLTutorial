CREATE PROCEDURE cmdev.test_cursor ()
BEGIN
    DECLARE v_dname VARCHAR(16);
    DECLARE cur_dept CURSOR FOR
        SELECT dname FROM cmdev.dept;
    OPEN cur_dept;
    BEGIN
        DECLARE EXIT HANDLER FOR 1329 BEGIN END;
        LOOP
            FETCH cur_dept INTO v_dname;
            --
        END LOOP;
    END;
    CLOSE cur_dept;
END


CREATE PROCEDURE cmdev.test_cursor2 ()
BEGIN
    DECLARE v_dname VARCHAR(16);
    DECLARE v_exit INT DEFAULT 0;
    DECLARE cur_dept CURSOR FOR
        SELECT dname FROM cmdev.dept;
    DECLARE CONTINUE HANDLER FOR 1329 SET v_exit = 1;
    OPEN cur_dept;
    my_fetch: LOOP
        FETCH cur_dept INTO v_dname;
        IF v_exit THEN
            LEAVE my_fetch;
        END IF;
        --
    END LOOP my_fetch;
    CLOSE cur_dept;
END


CREATE cmdev.gen_top_emp( IN p_salary FLOAT(7, 2) )
BEGIN
    DECLARE v_empno INT;
    DECLARE v_ename VARCHAR(16);
    DECLARE v_salary FLOAT(7, 2);
    DECLARE cur_emp CURSOR FOR
        SELECT   empno, ename, salary
        FROM     cmdev.emp
        WHERE    salary >= p_salary
        ORDER BY salary DESC;
    BEGIN
        DECLARE EXIT HANDLER FOR 1146
        BEGIN
            CREATE TABLE cmdev.topemp (
                empno INT,
                ename VARCHAR(16),
                salary FLOAT(7, 2)
            );
        END;
        DELETE FROM cmdev.topemp;
    END;
    OPEN cur_emp;
    BEGIN
        DECLARE EXIT HANDLER FOR SQLSTATE '02000' BEGIN END;
        LOOP
            FETCH cur_emp INTO v_empno, v_ename, v_salary;
            INSERT INTO cmdev.topemp 
            VALUES (v_empno, v_ename, v_salary);
        END LOOP;
    END;
    CLOSE cur_emp;
    SELECT * FROM topemp;
END
