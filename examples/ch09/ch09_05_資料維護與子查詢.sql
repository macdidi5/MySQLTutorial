CREATE TABLE mycountry (
  Code char(3) NOT NULL DEFAULT '',
  Name char(52) NOT NULL DEFAULT '',
  Continent enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  Region char(26) NOT NULL DEFAULT '',
  Population int(11) NOT NULL DEFAULT '0',
  GNP float(10,2) DEFAULT NULL,
  PRIMARY KEY (Code)
)


INSERT INTO mycountry
( SELECT Code, Name, Continent, Region, Population, GNP
  FROM country
  WHERE Continent = 'Asia' )


INSERT INTO mycountry
( SELECT *
  FROM country
  WHERE Continent = 'Africa' )


UPDATE cmdev.emp
SET    salary = salary * 1.05
WHERE  deptno = ( SELECT deptno
                  FROM   cmdev.dept
                  WHERE  dname = 'SALES' )


UPDATE cmdev.emp
SET    salary = salary * 1.05
WHERE  job = ( SELECT job
               FROM   cmdev.emp
               WHERE  empno = 'BLAKE' )


