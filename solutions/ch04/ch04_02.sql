SELECT empno, ename, job, e.deptno, dname
FROM   cmdev.emp e LEFT OUTER JOIN cmdev.dept d USING(deptno)


SELECT empno, ename, job, 
       IFNULL(e.deptno, '') deptno, IFNULL(dname, '') dname
FROM   cmdev.emp e LEFT OUTER JOIN cmdev.dept d USING(deptno)
