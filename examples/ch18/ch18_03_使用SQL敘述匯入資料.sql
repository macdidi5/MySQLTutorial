SHOW VARIABLES LIKE 'datadir'


LOAD DATA LOCAL INFILE 'C:/cmdev/data/in/newdept.txt'
INTO TABLE cmdev.dept


LOAD DATA LOCAL INFILE 'C:/cmdev/data/in/newdeptcsv.txt'
INTO TABLE cmdev.dept
FIELDS TERMINATED BY ','
       ENCLOSED BY '"'
LINES TERMINATED  BY '\r'


LOAD DATA LOCAL INFILE 'C:/cmdev/data/in/newdept2.txt'
INTO TABLE cmdev.dept


LOAD DATA LOCAL INFILE 'C:/cmdev/data/in/newdept2.txt'
INTO TABLE cmdev.dept
IGNORE 1 LINES (deptno, dname)


LOAD DATA LOCAL INFILE 'C:/cmdev/data/in/newemp.txt'
INTO TABLE cmdev.emp
(empno, @v_ename, @v_job)
SET ename = UPPER(@v_ename),
    job = UPPER(@v_job)


LOAD DATA INFILE 'C:/cmdev/data/in/newdept3.txt'
INTO TABLE cmdev.dept


LOAD DATA INFILE 'C:/cmdev/data/in/newdept3.txt'
IGNORE INTO TABLE cmdev.dept


LOAD DATA INFILE 'C:/cmdev/data/in/newdept4.txt'
REPLACE INTO TABLE cmdev.dept
