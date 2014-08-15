UPDATE cmdev.emp
SET    salary = salary + 100


UPDATE cmdev.emp
SET    salary = salary + 100
WHERE  salary < 1500


UPDATE cmdev.dept
SET    deptno = 50
WHERE  deptno = 30


UPDATE IGNORE cmdev.dept
SET    deptno = 50
WHERE  deptno = 30


UPDATE cmdev.emp
SET    salary = 'HELLO', comm = 1000
WHERE  empno = 7369


UPDATE IGNORE cmdev.emp
SET    salary = 'HELLO', comm = 1000
WHERE  empno = 7369


UPDATE   cmdev.emp
SET      salary = salary + 100
ORDER BY salary


UPDATE   cmdev.emp
SET      salary = salary + 100
LIMIT    3


UPDATE   cmdev.emp
SET      salary = salary + 100
ORDER BY salary
LIMIT    3


UPDATE   cmdev.emp
SET      salary = salary + 100
ORDER BY salary DESC
LIMIT    3
