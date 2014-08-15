CREATE FUNCTION my_summary ( p_num INT, p_num2 INT ) 
RETURNS INT
BEGIN
    RETURN p_num + p_num2;
END


SELECT my_summary( 3, 5 )


SELECT my_summary( 3 )


SELECT my_summary( 3, 5, 7 )


SELECT my_summary( '3', '5' )


SELECT my_summary( 'A', 'B' )


CREATE PROCEDURE test_param ( IN pi_in INT, 
                              OUT po_out INT,
                              INOUT pio_inout INT )
BEGIN
    SELECT pi_in, po_out, pio_inout;    
    SET pi_in = 99, po_out = 99, pio_inout = 99;
END


CALL test_param ( 1 )


CALL test_param ( 1, 2, 3 )


CALL test_param ( 1, @my_out, @my_inout )


SELECT @my_out, @my_inout


SET @my_in = 1, @my_out = 2, @my_inout = 3


CALL test_param ( @my_in, @my_out, @my_inout )


SELECT @my_in, @my_out, @my_inout


CREATE PROCEDURE country_count ( IN pi_con VARCHAR(26) )
BEGIN
    SELECT COUNT(*) FROM country WHERE Continent = pi_con;
END


SET @my_con = 'Europe'


CALL country_count( @my_con )


CREATE PROCEDURE country_count2 
( IN pi_con VARCHAR(26), OUT po_count INT )
BEGIN
    SELECT COUNT(*) INTO po_count 
    FROM   country 
    WHERE  Continent = pi_con;
END


CALL country_count2('Asia', @my_count)


SELECT @my_count
