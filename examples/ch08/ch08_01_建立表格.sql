CREATE TABLE city (
  ID int(11) NOT NULL auto_increment,
  Name char(35) NOT NULL default '',
  CountryCode char(3) NOT NULL default '',
  District char(20) NOT NULL default '',
  Population int(11) NOT NULL default '0',
  PRIMARY KEY  (ID)
) AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1


CREATE TABLE addressbook (
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE
)


CREATE TABLE addressbook (
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_unicode_ci


SHOW ENGINES


CREATE TABLE addressbook (
  name      VARCHAR(20) CHARACTER SET big5,
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_unicode_ci


CREATE TABLE addressbook (
  name      VARCHAR(20) NOT NULL,
  tel       VARCHAR(20) NULL,
  address   VARCHAR(80),
  birthdate DATE
)


INSERT INTO addressbook (name) VALUES ('Simon Johnson')


INSERT INTO addressbook (address) VALUES ('Taipei')


CREATE TABLE addressbook (
  name      VARCHAR(20) NOT NULL,
  tel       VARCHAR(20) NULL,
  address   VARCHAR(80),
  birthdate DATE
)


CREATE TABLE addressbook (
  name      VARCHAR(20) NOT NULL,
  tel       VARCHAR(20) DEFAULT NULL,
  address   VARCHAR(80) DEFAULT NULL,
  birthdate DATE DEFAULT NULL
)


CREATE TABLE addressbook (
  name      VARCHAR(20) NOT NULL,
  tel       VARCHAR(20),
  address   VARCHAR(80) DEFAULT 'Taipei',
  birthdate DATE
)


INSERT INTO addressbook (name) VALUES ('Simon Johnson')


UPDATE addressbook SET address = DEFAULT


CREATE TABLE tstable (
  ts TIMESTAMP,
  ts2 TIMESTAMP,
  area VARCHAR(20) NOT NULL,
  temp INT NOT NULL
)


CREATE TABLE tstable (
  ts timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  ts2 timestamp NOT NULL default '0000-00-00 00:00:00',
  area varchar(20) NOT NULL,
  temp int(11) NOT NULL
)


INSERT INTO tstable (area, temp) VALUES ('NORTH', 25)


INSERT INTO tstable (area, temp) VALUES ('CENTRAL', 28)


INSERT INTO tstable (area, temp) VALUES ('SOUTH', 30)


UPDATE tstable SET temp = 32 WHERE area = 'South'


CREATE TABLE tstable2 (
  created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  area VARCHAR(20) NOT NULL,
  temp INT NOT NULL
)


CREATE TABLE tstable2 (
  created TIMESTAMP DEFAULT 0,
  updated TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  area VARCHAR(20) NOT NULL,
  temp INT NOT NULL
)


INSERT INTO tstable2 (created, area, temp) VALUES (NULL, 'NORTH', 25)


INSERT INTO tstable2 (created, area, temp) VALUES (NULL, 'CENTRAL', 28)


INSERT INTO tstable2 (created, area, temp) VALUES (NULL, 'SOUTH', 30)


UPDATE tstable2 SET temp = 32 WHERE area = 'South'


SELECT Name, Population
FROM   world.city
WHERE  CountryCode='TWN'


CREATE TABLE cityoftaiwan
SELECT Name, Population
FROM   world.city
WHERE  CountryCode='TWN'


CREATE TABLE cityoftaiwan2 (
  Name VARCHAR(30),
  Population INT UNSIGNED)
SELECT Name, Population
FROM   world.city
WHERE  CountryCode='TWN'


CREATE TABLE cityoftaiwan3 (
  Name VARCHAR(30),
  Population INT UNSIGNED,
  Description VARCHAR(50))
SELECT Name, Population
FROM   world.city
WHERE  CountryCode='TWN'
