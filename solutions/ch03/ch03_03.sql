SELECT ename, job, salary,
       CASE job
         WHEN 'PRESIDENT' THEN salary * 2
         WHEN 'MANAGER' THEN salary * 1.5
         WHEN 'ANALYST' THEN salary * 1
         ELSE 0
       END bonus
FROM   cmdev.emp


SELECT empno, ename, IFNULL(deptno, 'No dept no') deptno
FROM   cmdev.emp
