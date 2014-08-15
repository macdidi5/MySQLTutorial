CREATE VIEW cmdev.EmpSalaryView AS
SELECT * FROM cmdev.emp WHERE salary >= 1500


CREATE OR REPLACE VIEW cmdev.EmpDept20View AS
SELECT * FROM cmdev.EmpSalaryView WHERE deptno = 20
WITH LOCAL CHECK OPTION


DROP VIEW cmdev.EmpSalaryView


SELECT * FROM cmdev.empdept20view


CHECK TABLE EmpDept20View


SELECT TABLE_SCHEMA, TABLE_NAME, VIEW_DEFINITION,
       CHECK_OPTION, IS_UPDATABLE
FROM   information_schema.VIEWS
