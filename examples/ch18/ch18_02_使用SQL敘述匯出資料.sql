SELECT * INTO OUTFILE 'C:/cmdev/data/out/dept.txt'
FROM   cmdev.dept


SELECT * INTO OUTFILE 'C:/cmdev/data/out/dept2.txt'
FIELDS TERMINATED BY '|'
FROM   cmdev.dept


SELECT * INTO OUTFILE 'C:/cmdev/data/out/dept3.txt'
FIELDS ENCLOSED BY '*'
FROM   cmdev.dept


SELECT empno, ename, salary, deptno
INTO OUTFILE 'C:/cmdev/data/out/emp.txt'
FROM   cmdev.emp
WHERE  salary < 1500


SELECT empno, ename, salary, deptno
INTO OUTFILE 'C:/cmdev/data/out/emp2.txt'
FIELDS ESCAPED BY '$'
FROM   cmdev.emp
WHERE  salary < 1500


SELECT empno, ename, salary, deptno
INTO OUTFILE 'C:/cmdev/data/out/emp3.txt'
LINES STARTING BY '>>>' TERMINATED BY '\n'
FROM   cmdev.emp
WHERE  salary < 1500


SELECT * INTO OUTFILE 'C:/cmdev/data/out/deptcsv.txt'
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r'
FROM   cmdev.dept
