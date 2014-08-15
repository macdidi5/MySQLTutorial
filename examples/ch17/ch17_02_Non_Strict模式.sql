SET sql_mode = ''


SHOW VARIABLES LIKE 'sql_mode'


SELECT @@sql_mode


SET GLOBAL sql_mode = ''


SHOW GLOBAL VARIABLES LIKE 'sql_mode'


INSERT INTO debug
VALUES (1, 'ABC', '2000-01-01', '11:22:33', 'A', 'Y')


INSERT INTO debug (fint, fchar) VALUES (2, 'ABCDEF')


INSERT INTO debug (fset) VALUES ('A,X,B,C,W,M')


INSERT INTO debug (fint) VALUES (NULL)


INSERT INTO debug (fchar) VALUES ('SAM')
