SELECT empno, ename, LPAD(salary, 12, '$') salary
FROM   cmdev.emp


SELECT empno, ename, Length(ename) length
FROM   cmdev.emp


SELECT   ename, REPEAT('*',salary DIV 100) chart
FROM     cmdev.emp
ORDER BY salary DESC


SELECT empno, ename, salary, ROUND(salary * 1.25) newsalary
FROM   cmdev.emp


SELECT empno, ename, salary, ROUND(salary * 1.25) newsalary,
       ROUND(salary * 0.25) increase
FROM   cmdev.emp
