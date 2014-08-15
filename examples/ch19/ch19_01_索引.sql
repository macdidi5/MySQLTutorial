CREATE TABLE test (
  id      CHAR(10) PRIMARY KEY,
  name    VARCHAR(20),
  address VARCHAR(255)
)  


CREATE INDEX name_index ON test (name)


CREATE INDEX addr_index ON test (address)


CREATE INDEX addr_index ON test ( address (6) )


SELECT COUNT(*), COUNT(DISTINCT address)
FROM   test


SELECT COUNT(*), COUNT( DISTINCT LEFT(address, 6) )
FROM   test
