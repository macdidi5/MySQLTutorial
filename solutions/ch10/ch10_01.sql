CREATE VIEW PetEvent AS
SELECT p.id, name, owner, species, edate, etype
FROM   pet p, event e
WHERE  p.id = e.id


SELECT * FROM PetEvent


CREATE OR REPLACE VIEW PetEvent AS
SELECT p.id, name, owner, species, gender, birth, edate, etype
FROM   pet p, event e
WHERE  p.id = e.id


SELECT * FROM PetEvent
