CREATE ALGORITHM = MERGE VIEW cmdev.EmpSalaryView AS
SELECT * FROM cmdev.emp WHERE salary >= 1500


SELECT * FROM cmdev.EmpSalaryView


SELECT * FROM 
(SELECT * FROM cmdev.emp WHERE salary >= 1500) temp


CREATE ALGORITHM = TEMPTABLE VIEW cmdev.EmpSalaryView AS
SELECT * FROM cmdev.emp WHERE salary >= 1500


SELECT * FROM cmdev.EmpSalaryView


SELECT * FROM cmdev.TempView


SELECT   job, COUNT(job) CountJob, SUM(salary) SumSalary
FROM     emp
GROUP BY job


CREATE ALGORITHM = MERGE VIEW EmpJobView AS
SELECT   job, COUNT(job) CountJob, SUM(salary) SumSalary
FROM     emp
GROUP BY job
