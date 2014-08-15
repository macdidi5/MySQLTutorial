CREATE PROCEDURE test_weight (IN p_weight INT)
BEGIN
    IF p_weight > 100 THEN
        SELECT 'You are heavy!';
    END IF;
END


CALL test_weight(101)


CALL test_weight(80)


CREATE PROCEDURE test_weight2 (IN p_weight INT)
BEGIN
    IF p_weight > 100 THEN
        SELECT 'You are heavy!';
    ELSEIF p_weight < 100 THEN
        SELECT 'Good!';
    END IF;
END


CALL test_weight2(101)


CALL test_weight2(80)


CALL test_weight2(100)


CREATE PROCEDURE test_weight3 (IN p_weight INT)
BEGIN
    IF p_weight > 100 THEN
        SELECT 'You are heavy!';
    ELSEIF p_weight < 100 THEN
        SELECT 'Good!';
    ELSE 
        SELECT 'Standard!';
    END IF;
END


CALL test_weight3(101)


CALL test_weight3(80)


CALL test_weight3(100)


CREATE FUNCTION std_weight (p_height INT, p_gender CHAR(1)) 
RETURNS INT
BEGIN
    DECLARE standard INT DEFAULT 0;
    IF (p_height BETWEEN 160 AND 164) AND p_gender = 'M' THEN
        SET standard = 58;
    ELSEIF (p_height BETWEEN 160 AND 164) AND p_gender = 'F' THEN
        SET standard = 58;
    ELSEIF (p_height BETWEEN 165 AND 169) AND p_gender = 'M' THEN
        SET standard = 60;
    ELSEIF (p_height BETWEEN 165 AND 169) AND p_gender = 'F' THEN
        SET standard = 56;
    ELSEIF (p_height BETWEEN 170 AND 174) AND p_gender = 'M' THEN
        SET standard = 64;
    ELSEIF (p_height BETWEEN 170 AND 174) AND p_gender = 'F' THEN
        SET standard = 60;
    END IF;
    RETURN standard;
END


CREATE PROCEDURE test_weight_final (IN p_weight INT,
                                    IN p_height INT,
                                    IN p_gender CHAR(1))
BEGIN
    DECLARE standard INT DEFAULT std_weight(p_height, p_gender);
    IF p_weight > standard THEN
        SELECT 'You are heavy!';
    ELSEIF p_weight < standard THEN
        SELECT 'Good!';
    ELSE
        SELECT 'Standard!';
    END IF;
END


CREATE PROCEDURE test_weight_case (IN p_weight INT,
                                    IN p_height INT,
                                    IN p_gender CHAR(1))
BEGIN
    DECLARE standard INT DEFAULT std_weight(p_height, p_gender);
    CASE
    WHEN p_weight > standard THEN
        SELECT 'You are heavy!';
    WHEN p_weight < standard THEN
        SELECT 'Good!';
    ELSE
        SELECT 'Standard!';
    END CASE;
END


CREATE FUNCTION get_season (p_num INT)
RETURNS VARCHAR(7)
BEGIN
    DECLARE season VARCHAR(7);
    CASE p_num
    WHEN 1 THEN SET season = 'Spring';
    WHEN 2 THEN SET season = 'Summer';
    WHEN 3 THEN SET season = 'Autumn';
    WHEN 4 THEN SET season = 'Winter';
    END CASE;
    RETURN season;
END


SELECT get_season(2)


SELECT get_season(3)


SELECT get_season(5)


CREATE FUNCTION get_season2 (p_num INT)
RETURNS VARCHAR(7)
BEGIN
    DECLARE season VARCHAR(7);
    CASE p_num
    WHEN 1 THEN SET season = 'Spring';
    WHEN 2 THEN SET season = 'Summer';
    WHEN 3 THEN SET season = 'Autumn';
    WHEN 4 THEN SET season = 'Winter';
    ELSE SET season = 'Unknown';
    END CASE;
    RETURN season;
END


CREATE FUNCTION summary_while (p_num INT) RETURNS INT
BEGIN
    DECLARE v_count INT DEFAULT 1;
    DECLARE v_total INT DEFAULT 0;
    WHILE v_count <= p_num DO
        SET v_total = v_total + v_count;
        SET v_count = v_count + 1;
    END WHILE;
    RETURN v_total;
END


CREATE FUNCTION summary_repeat (p_num INT) RETURNS INT
BEGIN
    DECLARE v_count INT DEFAULT 1;
    DECLARE v_total INT DEFAULT 0;
    REPEAT
        SET v_total = v_total + v_count;
        SET v_count = v_count + 1;
        UNTIL v_count > p_num
    END REPEAT;
    RETURN v_total;
END


CREATE FUNCTION summary_loop (p_num INT) RETURNS INT
BEGIN
    DECLARE v_count INT DEFAULT 1;
    DECLARE v_total INT DEFAULT 0;
    my_label: LOOP
        SET v_total = v_total + v_count;
        SET v_count = v_count + 1;
        IF v_count > p_num THEN
            LEAVE my_label;
        END IF;
    END LOOP my_label;
    RETURN v_total;
END


CREATE FUNCTION summary_iterate (p_num INT) RETURNS INT
BEGIN
    DECLARE v_count INT DEFAULT 0;
    DECLARE v_total INT DEFAULT 0;
    my_label: WHILE v_count <= p_num DO
        SET v_count = v_count + 1;
        IF v_count % 2 = 0 THEN
            ITERATE my_label;
        END IF;
        SET v_total = v_total + v_count;
    END WHILE my_label;
    RETURN v_total;
END
