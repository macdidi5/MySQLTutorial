CREATE VIEW cmdev.EmpDept30View AS
SELECT empno, ename, job, manager, hiredate, salary, comm
FROM   cmdev.emp
WHERE  deptno = 30


UPDATE EmpDept30View
SET    comm = 600
WHERE  empno = 7844


SELECT * FROM EmpDept30View WHERE empno = 7844


SELECT * FROM emp WHERE empno = 7844


INSERT INTO EmpDept30View
VALUES (9001, 'SIMON', 'SALESMAN', 7698, 
        '2000-04-01', 1000, 250)


SELECT * FROM EmpDept30View WHERE empno = 9001


SELECT * FROM emp WHERE empno = 9001


DELETE FROM EmpDept30View WHERE empno = 9001


SELECT * FROM EmpDept30View WHERE empno = 9001


SELECT * FROM emp WHERE empno = 9001


CREATE OR REPLACE VIEW cmdev.EmpDept30View AS
SELECT empno, ename, job, manager, hiredate, salary, comm
FROM   cmdev.emp
WHERE  deptno = 30
WITH CHECK OPTION


INSERT INTO EmpDept30View
VALUES (9002, 'MARY', 'SALESMAN', 7698,
        '2000-05-01', 1200, 150)


UPDATE EmpDept30View
SET    comm = 1200
WHERE  empno = 7844


CREATE VIEW cmdev.EmpSalaryView AS
SELECT * FROM cmdev.emp WHERE salary >= 1500


CREATE OR REPLACE VIEW cmdev.EmpDept20View AS
SELECT * FROM cmdev.EmpSalaryView WHERE deptno = 20
WITH LOCAL CHECK OPTION


SELECT * FROM EmpDept20View


UPDATE EmpDept20View
SET    deptno = 30
WHERE  empno = 7566


UPDATE EmpDept20View
SET    salary = 1000
WHERE  empno = 7566


CREATE OR REPLACE VIEW cmdev.EmpDept20View AS
SELECT * FROM cmdev.EmpSalaryView WHERE deptno = 20
WITH CASCADED CHECK OPTION


UPDATE EmpDept20View
SET    salary = 1000
WHERE  empno = 7902
