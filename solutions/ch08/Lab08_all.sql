CREATE TABLE pet (
  id      SERIAL,
  name    VARCHAR(30) NOT NULL,
  owner   VARCHAR(30),
  species VARCHAR(30),
  gender  ENUM('m','f'),
  birth   DATE
);


CREATE TABLE event (
  id     BIGINT UNSIGNED NOT NULL,
  edate  DATE NOT NULL,
  etype  VARCHAR(15) NOT NULL,
  remark VARCHAR(255)
);

INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Fluffy','Harold','cat','f','1993-02-04');
INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Claws','Gwen','cat','m','1994-03-17');
INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Buffy','Harold','dog','f','1989-05-13');
INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Fang','Benny','dog','m','1990-08-27');
INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Chirpy','Gwen','bird','f','1998-09-11');
INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Whistler','Gwen','bird',NULL,'1997-12-09');
INSERT INTO pet (id,name,owner,species,gender,birth) VALUES (0,'Slim','Benny','snake','m','1996-04-29');

INSERT INTO event (id,edate,etype,remark) VALUES (1,'1995-05-15','litter','4 kittens, 3 female, 1 male');
INSERT INTO event (id,edate,etype,remark) VALUES (3,'1993-06-23','litter','5 puppies, 2 female, 3 male');
INSERT INTO event (id,edate,etype,remark) VALUES (3,'1994-06-19','litter','3 puppies, 3 female');
INSERT INTO event (id,edate,etype,remark) VALUES (5,'1999-03-21','vet','needed beak straightened');
INSERT INTO event (id,edate,etype,remark) VALUES (7,'1997-08-03','vet','broken rib');
INSERT INTO event (id,edate,etype,remark) VALUES (4,'1991-10-12','kennel',NULL);
INSERT INTO event (id,edate,etype,remark) VALUES (4,'1998-08-28','birthday','Gave him a new chew toy');
INSERT INTO event (id,edate,etype,remark) VALUES (2,'1998-03-17','birthday','Gave him a new flea collar');
INSERT INTO event (id,edate,etype,remark) VALUES (6,'1998-12-09','birthday','First birthday');

ALTER TABLE event
MODIFY edate TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

INSERT INTO event (id, etype, remark)
VALUES (4, 'vet', 'Broken leg');

INSERT INTO pet
VALUES (0, 'Kingkon', 'Simon', 'dog', 'm', '1990-9-13');

INSERT INTO event (id, etype)
VALUES (LAST_INSERT_ID(), 'kennel');

ALTER TABLE pet ADD INDEX pet_name_index (name);

CREATE INDEX pet_owner_index ON pet (owner);

DROP INDEX pet_owner_index ON pet;

