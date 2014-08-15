INSERT INTO cmdev.dept VALUES (60, 'EDU', 'NEW YORK')


INSERT INTO cmdev.dept
VALUES (70, 'MARKETING', DEFAULT)


INSERT INTO cmdev.dept
VALUES (80, 'PURCHASING')


INSERT INTO cmdev.dept
VALUES ('PURCHASING', 80, 'NEW YORK')


INSERT INTO cmdev.dept (dname, deptno, location)
VALUES ('PURCHASING', 80, 'NEW YORK')


INSERT INTO cmdev.dept (deptno, dname, location)
VALUES (90, 'SHIPPING')


INSERT INTO cmdev.dept
VALUES (90, 'SHIPPING', DEFAULT)


INSERT INTO cmdev.dept (deptno, dname)
VALUES (90, 'SHIPPING')


INSERT INTO cmdev.dept (deptno, location)
VALUES (80, 'NEW YORK')


INSERT INTO cmdev.dept () VALUES ()


INSERT INTO cmdev.dept (deptno, dname)
VALUES (90, 'SHIPPING')


INSERT INTO cmdev.dept 
SET deptno = 90, dname = 'SHIPPING'


INSERT INTO cmdev.emp VALUES 
(8001, 'SIMON', 'MANAGER', 7369, '2001-02-03', 3300, NULL, 50),
(8002, 'JOHN', 'PROGRAMMER', 8001, '2002-01-01', 2300, NULL, 50),
(8003, 'GREEN', 'ENGINEER', 8001, '2003-05-01', 2000, NULL, 50)


INSERT INTO cmdev.dept
VALUES (50, 'MIS', DEFAULT);


INSERT IGNORE INTO cmdev.dept
VALUES (50, 'MIS', DEFAULT);


INSERT IGNORE INTO cmdev.dept
VALUES (500, 'MIS', DEFAULT);


SELECT *
FROM   cmdev.travel
WHERE  empno = 7900 AND 
       location = 'BOSTON'


INSERT INTO cmdev.travel
VALUES (7900, 'BOSTON', 1);


UPDATE cmdev.travel
SET    counter = counter + 1
WHERE  empno = 7900 AND 
       location = 'BOSTON'


INSERT INTO cmdev.travel
VALUES (7900, 'BOSTON', 1)
ON DUPLICATE KEY UPDATE counter = counter + 1


INSERT INTO cmdev.dept
VALUES (50, 'MIS', DEFAULT)


INSERT IGNORE INTO cmdev.dept
VALUES (50, 'MIS', DEFAULT)


REPLACE INTO cmdev.dept
VALUES (50, 'MIS', DEFAULT)
