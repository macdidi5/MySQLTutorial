CREATE TABLE meeting (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(36),
  PRIMARY KEY (id)
)


CREATE TABLE participate (
  id INT UNSIGNED NOT NULL,
  empno INT(11),
  INDEX (id)
)


INSERT INTO meeting (title) VALUES ('Sales meeting')


INSERT INTO participate (id, empno) 
VALUES (LAST_INSERT_ID(), 7499),
       (LAST_INSERT_ID(), 7521),
       (LAST_INSERT_ID(), 7654),
       (LAST_INSERT_ID(), 7844)


SELECT m.id, m.title, p.empno, e.ename
FROM   meeting m, participate p, emp e
WHERE  m.id = p.id AND p.empno = e.empno


INSERT INTO meeting (title) 
VALUES ('Analyst meeting')


INSERT INTO meeting (id, title) 
VALUES (0, 'Manager  meeting')


INSERT INTO meeting (id, title) 
VALUES (NULL, 'Clerk meeting')


SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO'


CREATE TABLE travelautoincr (
  empno INT(11) NOT NULL,
  location VARCHAR(16) NOT NULL,
  counter SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (empno, location, counter)
) ENGINE=MyISAM


INSERT INTO travelautoincr (empno, location)
VALUES (7369, 'CHICAGO'), (7369, 'CHICAGO'),
       (7499, 'DALLAS'), (7499, 'DALLAS'), (7499, 'DALLAS'),
       (7566, 'BOSTON'), (7566, 'BOSTON')


