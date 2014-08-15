SET sql_mode = ''


INSERT INTO debug (fint, fchar, fdate)
VALUES (255, 'Hello!', '99999-01-01')


SHOW WARNINGS


DROP TABLE IF EXISTS notexists


SHOW WARNINGS


SELECT notexists FROM cmdev.emp


SHOW ERRORS


SELECT * INTO OUTFILE 'C:/hello/mydata.sql' 
FROM cmdev.emp


perror 2


SELECT COUNT(*) WARNINGS


SELECT @@warning_count


SELECT COUNT(*) ERRORS


SELECT @@error_count
