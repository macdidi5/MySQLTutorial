ALTER TABLE event
MODIFY edate TIMESTAMP DEFAULT CURRENT_TIMESTAMP


DESC event


INSERT INTO event (id, etype, remark)
VALUES (4, 'vet', 'Broken leg')


SELECT * FROM event WHERE id = 4


INSERT INTO pet 
VALUES (0, 'Kingkon', 'Simon', 'dog', 'm', '1990-9-13')


INSERT INTO event (id, etype)
VALUES (LAST_INSERT_ID(), 'kennel')


SELECT * FROM pet WHERE name = 'Kingkon'


SELECT * FROM event WHERE id = 8
