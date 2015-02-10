DROP DATABASE IF EXISTS cmdev;

CREATE DATABASE cmdev CHARACTER SET big5;

USE cmdev;

DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  empno INT NOT NULL,
  ename VARCHAR(16) NOT NULL,
  job VARCHAR(16),
  manager INT,
  hiredate DATE,
  salary float(7, 2),
  comm float(7,2),
  deptno INT,
  PRIMARY KEY (empno)
);

INSERT INTO emp VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO emp VALUES (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO emp VALUES (7521,'WARD','SALESMAN',7698,'1981-02-22',1250, 500,30);
INSERT INTO emp VALUES (7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20);
INSERT INTO emp VALUES (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO emp VALUES (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,NULL);
INSERT INTO emp VALUES (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10);
INSERT INTO emp VALUES (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20);
INSERT INTO emp VALUES (7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO emp VALUES (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO emp VALUES (7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20);
INSERT INTO emp VALUES (7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,NULL);
INSERT INTO emp VALUES (7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20);
INSERT INTO emp VALUES (7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno INT NOT NULL,
  dname VARCHAR(16) NOT NULL,
  location VARCHAR(16),
  PRIMARY KEY (deptno)
);

INSERT INTO dept VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO dept VALUES (30,'SALES','CHICAGO');
INSERT INTO dept VALUES (40,'OPERATIONS','BOSTON');
INSERT INTO dept VALUES (50,'IT','NEW YORK');

DROP TABLE IF EXISTS travel;

CREATE TABLE travel (
  empno INT NOT NULL,
  location VARCHAR(16) NOT NULL,
  counter INT NOT NULL,
  PRIMARY KEY (empno, location)
);

INSERT INTO travel VALUES (7369,'CHICAGO',1);
INSERT INTO travel VALUES (7499,'DALLAS',1);
INSERT INTO travel VALUES (7521,'DALLAS',2);
INSERT INTO travel VALUES (7566,'BOSTON',1);
INSERT INTO travel VALUES (7654,'NEW YORK',1);


CREATE TABLE integertable (
  n TINYINT, 
  n2 SMALLINT, 
  n3 MEDIUMINT, 
  n4 INT, 
  n5 BIGINT
);

CREATE TABLE floatingable (
  n FLOAT, 
  n2 DOUBLE, 
  n3 DECIMAL
);

CREATE TABLE numerictable (
  i  TINYINT UNSIGNED,
  i2 SMALLINT UNSIGNED,
  i3 MEDIUMINT UNSIGNED, 
  i4 INT, 
  i5 BIGINT UNSIGNED,
  f  FLOAT UNSIGNED,
  f2 DOUBLE,
  f3 DECIMAL UNSIGNED
);

CREATE TABLE numerictable2 (
  i  TINYINT(3),
  i2 SMALLINT(3),
  i3 MEDIUMINT(3), 
  i4 INT(3), 
  i5 BIGINT(3),
  f  FLOAT(5, 2),
  f2 DOUBLE(5, 2),
  f3 DECIMAL(5, 2)
);

CREATE TABLE numerictable3 (
  i  TINYINT(3) UNSIGNED ZEROFILL,
  i2 SMALLINT(4) UNSIGNED ZEROFILL,
  i3 MEDIUMINT(5) UNSIGNED ZEROFILL, 
  i4 INT(6) UNSIGNED ZEROFILL, 
  i5 BIGINT(7) UNSIGNED ZEROFILL,
  f  FLOAT(5, 2) UNSIGNED ZEROFILL,
  f2 DOUBLE(7, 3) UNSIGNED ZEROFILL,
  f3 DECIMAL(9, 5) UNSIGNED ZEROFILL
);

CREATE TABLE bittable (
  n BIT,
  n2 BIT(8),
  n3 BIT(64)
);

CREATE TABLE nonbinarytable (
  s CHAR(10),
  s2 VARCHAR(10)
);

CREATE TABLE nonbinarytable2 (
  s  VARCHAR(6) CHARACTER SET latin1,
  s2 VARCHAR(6) CHARACTER SET big5,
  s3 VARCHAR(6) CHARACTER SET utf8
);

-- INSERT INTO nonbinarytable2 VALUES ('abc', 'abc', 'abc');
-- INSERT INTO nonbinarytable2 VALUES ('abcdef', 'abcdef', 'abcdef');
-- INSERT INTO nonbinarytable2 VALUES ('abc', '一二三', '一二三');
-- INSERT INTO nonbinarytable2 VALUES ('abcdef', '一二三四五六', '一二三四五六');
-- INSERT INTO nonbinarytable2 VALUES ('abcdef', '一二三abc', '一二三abc');
INSERT INTO nonbinarytable2 VALUES ('abc', 'abc', 'abc');
INSERT INTO nonbinarytable2 VALUES ('abcdef', 'abcdef', 'abcdef');
INSERT INTO nonbinarytable2 VALUES ('abc', '@GT', '@GT');
INSERT INTO nonbinarytable2 VALUES ('abcdef', '@GTabc', '@GTabc');
INSERT INTO nonbinarytable2 VALUES ('abcdef', '@GT|', '@GT|');

CREATE TABLE nonbinarytable3 (
  n  int,
  s  VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_ci,
  s2 VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_cs
);

INSERT INTO nonbinarytable3
VALUES (1, 'aaa', 'aaa'),(2, 'AAA', 'AAA'),
       (3, 'bbb', 'bbb'),(4, 'BBB', 'BBB'),
       (5, 'abc', 'abc'),(6, 'ABC', 'ABC');


CREATE TABLE binarytable (
  b  BINARY(6),
  b2 VARBINARY(6)
);

INSERT INTO binarytable VALUES ('a', 'a');
INSERT INTO binarytable VALUES ('abc', 'abc');
INSERT INTO binarytable VALUES ('abcdef', 'abcdef');


CREATE TABLE enumtable (
  enumsize ENUM('XS', 'S', 'M', 'L', 'XL'),
  stringsize VARCHAR(2)
);

CREATE TABLE settable (
  workingday SET('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN')
);

CREATE TABLE estable (
  enumsize  ENUM('XS', 'S', 'M', 'L', 'XL') CHARACTER SET latin1 COLLATE latin1_general_ci,
  enumsize2 ENUM('XS', 'S', 'M', 'L', 'XL') CHARACTER SET latin1 COLLATE latin1_general_cs,
  workingday  SET('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN') CHARACTER SET latin1 COLLATE latin1_general_ci,
  workingday2 SET('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN') CHARACTER SET latin1 COLLATE latin1_general_cs
);

INSERT INTO estable 
VALUES (1, 1, 21, 21),
       ('M','M','MON','MON'),
       ('M','M','mon','MON');

CREATE TABLE dttable (
  y4 YEAR(4),
  y2 YEAR(2),
  d  DATE,
  t  TIME,
  dt DATETIME,
  ts TIMESTAMP
);

DROP TABLE IF EXISTS deptlog;

CREATE TABLE deptlog (
  logno SERIAL,
  logdt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  message VARCHAR(64)
);

DROP TABLE IF EXISTS emplog;

CREATE TABLE emplog (
  logno bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  logdt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  message varchar(64),
  PRIMARY KEY logno (logno)
);

CREATE TABLE debug (
  fint TINYINT NOT NULL,
  fdouble DOUBLE(5, 2),
  fchar VARCHAR(3),
  fdate DATE DEFAULT '2000-01-01',
  ftime TIME,
  fdatetime DATETIME,
  ftimestamp TIMESTAMP,
  fyear YEAR,
  fenum ENUM('A', 'B', 'C'),
  fset SET('X', 'Y', 'Z')
);