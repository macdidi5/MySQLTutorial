SELECT country.Code, country.Capital, city.Name
FROM   country, city
WHERE  country.Capital = city.ID


SELECT country.Code, country.Capital, city.Name
FROM   country, city
WHERE  country.Capital = city.ID


SELECT Code, Capital, city.Name
FROM   country, city
WHERE  Capital = ID


SELECT Code, Capital, Name
FROM   country, city
WHERE  Capital = ID


SELECT country.name, country.Population coPop,
        city.Name, city.Population ciPop,
        city.Population / country.Population * 100 Scale
FROM   country, city
WHERE  Capital = ID


SELECT country.name, country.Population coPop,
       city.Name, city.Population ciPop,
       city.Population / country.Population * 100
FROM   country a, city b
WHERE  Capital = ID


SELECT a.name, a.Population coPop,
       b.Name, b.Population ciPop,
       b.Population / a.Population * 100
FROM   country a, city b
WHERE  Capital = ID


SELECT Code, Capital, city.Name
FROM   country INNER JOIN city ON Capital = ID


SELECT a.name, a.Population coPop,
       b.Name, b.Population ciPop,
       b.Population / a.Population * 100
FROM   country a INNER JOIN city b ON Capital = ID


SELECT empno, ename, dname
FROM   cmdev.emp e, cmdev.dept d
WHERE  e.deptno = d.deptno


SELECT empno, ename, dname
FROM   cmdev.emp e INNER JOIN cmdev.dept d
       ON e.deptno = d.deptno


SELECT empno, ename, dname
FROM   cmdev.emp e INNER JOIN cmdev.dept d
       USING (deptno)
