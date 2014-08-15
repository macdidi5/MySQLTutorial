CREATE TABLE addressbook (
  id        INT UNSIGNED PRIMARY KEY,  
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE,
  email     VARCHAR(36) UNIQUE KEY
)


CREATE TABLE addressbook (
  id        INT UNSIGNED,  
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE,
  email     VARCHAR(36),
  PRIMARY KEY (id),
  UNIQUE KEY (email)
)


CREATE TABLE addressbook (
  id        INT UNSIGNED,  
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE,
  email     VARCHAR(36),
  PRIMARY KEY (id),
  UNIQUE KEY (email),
  INDEX (name, tel)
)


CREATE TABLE addressbook (
  id        INT UNSIGNED,  
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE,
  email     VARCHAR(36),
  INDEX (address (5) DESC)
)


CREATE TABLE addressbook (
  id        INT UNSIGNED,  
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE,
  email     VARCHAR(36)
)


ALTER TABLE addressbook
ADD PRIMARY KEY (id)


ALTER TABLE addressbook
ADD UNIQUE KEY (email)


ALTER TABLE addressbook
ADD INDEX (name, tel)


ALTER TABLE addressbook
ADD INDEX (address (5) DESC)


CREATE TABLE addressbook (
  id        INT UNSIGNED,  
  name      VARCHAR(20),
  tel       VARCHAR(20),
  address   VARCHAR(80),
  birthdate DATE,
  email     VARCHAR(36)
)


ALTER TABLE addressbook
ADD PRIMARY KEY (id)


CREATE UNIQUE INDEX email_index 
ON addressbook (email)


CREATE INDEX name_tel_index 
ON addressbook (name, tel)


CREATE INDEX address_index 
ON addressbook (address (5) DESC)


ALTER TABLE addressbook ADD PRIMARY KEY (id)


CREATE UNIQUE INDEX email_index ON addressbook (email)
