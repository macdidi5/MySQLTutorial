SELECT empno, ename, deptno
FROM   cmdev.emp


SELECT empno, ename, e.deptno, d.dname
FROM   cmdev.emp e, cmdev.dept d
WHERE  e.deptno = d.deptno


SELECT empno, ename, e.deptno, d.dname
FROM   cmdev.emp e LEFT OUTER JOIN cmdev.dept d
       ON e.deptno = d.deptno


SELECT empno, ename, e.deptno, d.dname
FROM   cmdev.emp e LEFT OUTER JOIN cmdev.dept d
       ON e.deptno = d.deptno


SELECT empno, ename, e.deptno, d.dname
FROM   cmdev.dept d RIGHT OUTER JOIN cmdev.emp e
       ON e.deptno = d.deptno


SELECT empno, ename, e.deptno, d.dname
FROM   cmdev.emp e LEFT OUTER JOIN cmdev.dept d
       ON e.deptno = d.deptno


SELECT empno, ename, e.deptno, d.dname
FROM   cmdev.emp e RIGHT OUTER JOIN cmdev.dept d
       ON e.deptno = d.deptno
