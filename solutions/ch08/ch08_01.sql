USE mylab


CREATE TABLE pet (
  id      SERIAL,
  name    VARCHAR(30) NOT NULL,
  owner   VARCHAR(30),
  species VARCHAR(30),
  gender  ENUM('m','f'),
  birth   DATE
)


CREATE TABLE event (
  id     BIGINT UNSIGNED NOT NULL,
  edate  DATE NOT NULL,
  etype  VARCHAR(15) NOT NULL,
  remark VARCHAR(255)
)


SELECT * FROM pet


SELECT * FROM event


SELECT p.id, name, owner, edate, etype
FROM   pet p, event e
WHERE  p.id = e.id
