INSERT INTO integertable VALUES (1, 2, 3, 4, 5)


INSERT INTO integertable VALUES (1, 65536, 3, 4, 5)


INSERT INTO integertable VALUES (1.2, 2.3, 3.4, 4.5, 5.6)


INSERT INTO numerictable (i4, f2) VALUES (1, 1),(-1, -1)


INSERT INTO numerictable (i, f) VALUES (-1, -1)


INSERT INTO numerictable (i, i2, i3, i4, i5)
VALUES (1, 1, 1, 1, 1),
       (123, 123, 123, 123, 123),
       (123, 12345, 1234567, 1234567890, 1234567890123456789)


INSERT INTO numerictable (f, f2, f3)
VALUES (123.12, 123.12, 123.12),
       (123.123, 123.123, 123.123)


INSERT INTO numerictable (f, f2, f3) VALUES (0.1, 12345.12, 0.1)


INSERT INTO numerictable3 VALUES (1, 1, 1, 1, 1, 1.1, 1.1, 1.1)


INSERT INTO numerictable3 (i4) VALUES (123), (1234567)


INSERT INTO bittable 
VALUES (1, 255, 65536),
       (b'1', b'11111111', b'1111111111111111')


INSERT INTO nonbinarytable 
VALUES ('', ''),('123', '123'),('1234567890', '1234567890')


SELECT s, LENGTH(s), s2, LENGTH(s2), s3, LENGTH(s3) 
FROM   nonbinarytable2


SELECT s,CHAR_LENGTH(s),s2,CHAR_LENGTH(s2),s3,CHAR_LENGTH(s3) 
FROM   nonbinarytable2


SELECT * FROM nonbinarytable3


SELECT   * 
FROM     nonbinarytable3
ORDER BY s


SELECT   * 
FROM     nonbinarytable3
ORDER BY s2


SELECT * 
FROM   nonbinarytable3 
WHERE  s = 'aaa'


SELECT * 
FROM   nonbinarytable3 
WHERE  s2 = 'aaa'


SELECT b, LENGTH(b), b2, LENGTH(b2)
FROM   binarytable


INSERT INTO enumtable 
VALUES ('XS', 'XS'),('S', 'S'),('M', 'M'),
       ('L', 'L'),('XL', 'XL');


INSERT INTO enumtable (stringsize) VALUES ('QQ');


INSERT INTO enumtable (enumsize) VALUES ('QQ')


INSERT INTO enumtable (enumsize)
VALUES ('XS'),('S'),('M'),('L'),('XL')


INSERT INTO enumtable (enumsize)
VALUES (1),(2),(3),(4),(5)


SELECT   enumsize 
FROM     enumtable 
ORDER BY enumsize


SELECT   stringsize 
FROM     enumtable 
ORDER BY stringsize


SELECT * FROM enumtable where enumsize = 'M'


SELECT * FROM enumtable where enumsize = 3


INSERT INTO settable
VALUES ('MON,WED,FRI'),
       ('TUE,THU'),
       ('SAT,SUN'),
       ('MON,TUE,WED,THU,FRI,SAT,SUN')


INSERT INTO settable VALUES ('MON,HELLO,FRI')


INSERT INTO settable VALUES (0),(1),(4),(16)


INSERT INTO settable VALUES (''),('MON'),('WED'),('FRI')


INSERT INTO settable VALUES ('MON,WED,FRI')


INSERT INTO settable VALUES (21)


INSERT INTO estable 
VALUES (1, 1, 21, 21),
       ('M','M','MON','MON'),
       ('m','M','mon','MON')


INSERT INTO estable (enumsize2, workingday2)
VALUES ('m','mon')


INSERT INTO dttable (d) VALUES ('9000-1-1')


INSERT INTO dttable (d) VALUES ('900-1-1')


INSERT INTO dttable (d) VALUES ('90-1-1')


INSERT INTO dttable (d) VALUES ('9-1-1')


INSERT INTO dttable (d) VALUES ('2000-1-1')


INSERT INTO dttable (d) VALUES ('200-1-1')


INSERT INTO dttable (d) VALUES ('20-1-1')


INSERT INTO dttable (d) VALUES ('2-1-1')


INSERT INTO dttable (t) VALUES ('200:30:00')


INSERT INTO dttable (t) VALUES ('-1:20:30')


INSERT INTO dttable (t) VALUES ('200:30:30')


INSERT INTO dttable (t) VALUES ('200:30')


INSERT INTO dttable (t) VALUES ('200')


INSERT INTO dttable (dt) 
VALUES ('2000-01-01 10:10:10')


INSERT INTO dttable (dt) 
VALUES ('2000-01-01     10:10:10')


INSERT INTO dttable (dt) 
VALUES ('2000-01-01')


INSERT INTO dttable (dt) 
VALUES ('2000-01-01 200:00:00')


INSERT INTO dttable (y4) VALUES ('2000'),(2000)


INSERT INTO dttable (y4) VALUES ('200'),(200)


INSERT INTO dttable (y4) VALUES ('20'),(20)


INSERT INTO dttable (y4) VALUES ('2'),(2)


INSERT INTO dttable (y4) VALUES ('0000'), (0)


INSERT INTO dttable (y4) VALUES ('000')


INSERT INTO dttable (y4) VALUES ('00')


INSERT INTO dttable (y4) VALUES ('0')


INSERT INTO dttable (ts) VALUES ('1970-1-01 8:0:1')


INSERT INTO dttable (ts) VALUES ('1970-1-01 0:0:1')


SELECT @@GLOBAL.TIME_ZONE, @@SESSION.TIME_ZONE


SET SESSION TIME_ZONE = '+00:00'


SET GLOBAL TIME_ZONE = '+00:00'


SELECT @@GLOBAL.TIME_ZONE, @@SESSION.TIME_ZONE


INSERT INTO dttable (dt, ts)
VALUES ('2000-01-01 00:00:00', '2000-01-01 00:00:00')


SELECT dt,ts FROM dttable 


SET GLOBAL TIME_ZONE = '+08:00'


SELECT dt,ts FROM dttable
