USE world


SELECT 'My name is Simon Johnson', 35 * 12


SELECT * FROM city


SELECT * FROM cmdev.emp


SELECT * FROM city


SELECT ID, Name
FROM   city


SELECT Name, ID
FROM   city


SELECT ID, Name, District
FROM   city


SELECT ename, salary, salary * 12,
       (salary * 12) + (salary DIV 2)
FROM   cmdev.emp


SELECT ename, salary AS MonthSalary,
       salary * 12 AS AnnualSalary,
       (salary * 12) + (salary DIV 2) AnnualFullSalary
FROM   cmdev.emp


SELECT ename, salary * 12 AS 'Annual Salary'
FROM   cmdev.emp


SELECT ename, salary * 12 AS 'select'
FROM   cmdev.emp
