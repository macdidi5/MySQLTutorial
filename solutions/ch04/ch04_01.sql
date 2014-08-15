SELECT empno, ename, job, e.deptno, dname
FROM   cmdev.emp e, cmdev.dept d
WHERE  e.deptno = d.deptno


SELECT empno, ename, job, e.deptno, dname
FROM   cmdev.emp e, cmdev.dept d
WHERE  e.deptno = d.deptno AND
       e.deptno = 20


SELECT e.empno, e.ename, 
       m.empno 'Manager empno', m.ename 'Manager ename'
FROM   cmdev.emp e, cmdev.emp m
WHERE  e.manager = m.empno


