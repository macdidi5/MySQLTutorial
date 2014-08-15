SELECT empno, ename, hiredate, DAYNAME(hiredate) day
FROM   cmdev.emp


SELECT empno, ename, hiredate, DAYNAME(hiredate) day
FROM   cmdev.emp
WHERE  DAYOFWEEK(hiredate) = 3


SELECT empno, ename, hiredate, hiredate - INTERVAL 3 MONTH probationdate
FROM   cmdev.emp
