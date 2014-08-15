CREATE FUNCTION test_variable () RETURNS INT
BEGIN
    DECLARE v_num, v_num2, v_num3 INT;
    SET v_num = 3, v_num2 = 5;
    SET v_num3 = v_num + v_num2;
    RETURN v_num3;
END


CREATE FUNCTION world_rec_count ( ) RETURNS INT
BEGIN
    DECLARE v_country, v_city, v_countrylanguage INT;
    DECLARE v_total INT DEFAULT 0;
    SELECT COUNT(*) INTO v_country FROM country;
    SELECT COUNT(*) INTO v_city FROM city;
    SELECT COUNT(*) INTO v_countrylanguage FROM countrylanguage;
    SET v_total = v_country + v_city + v_countrylanguage;
    RETURN v_total;
END
