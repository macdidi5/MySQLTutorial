mysqldump -u root --tab=c:/cmdev/data/out mylab event


CREATE TABLE event2 LIKE event


DESC event2


SELECT * FROM event2


copy event.txt event2.txt


mysqlimport -u root mylab C:/cmdev/data/out/event2.txt


SELECT * FROM event2
