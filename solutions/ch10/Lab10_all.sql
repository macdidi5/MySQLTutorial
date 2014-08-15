CREATE VIEW PetEvent AS
SELECT p.id, name, owner, species, edate, etype
FROM   pet p, event e
WHERE  p.id = e.id;

CREATE OR REPLACE VIEW PetEvent AS
SELECT p.id, name, owner, species, gender, birth, edate, etype
FROM   pet p, event e
WHERE  p.id = e.id;

CREATE VIEW PetCatMale AS
SELECT id, name, owner, birth
FROM   pet
WHERE  species = 'Cat' AND gender = 'm';

UPDATE PetCatMale SET name = 'Hello' WHERE id = 2;

INSERT INTO PetCatMale VALUES (0, 'Danel', 'Sandra', '1998-12-3');

UPDATE pet SET species = 'Cat', gender = 'm' WHERE id = 9;

CREATE OR REPLACE VIEW PetCatMale AS
SELECT id, name, owner, birth
FROM   pet
WHERE  species = 'Cat' AND gender = 'm'
WITH CHECK OPTION;

INSERT INTO pet VALUES (0, 'Tiger', 'Sandra', 'Cat', 'm', '1998-12-18');
