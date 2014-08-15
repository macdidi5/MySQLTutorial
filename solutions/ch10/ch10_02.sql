CREATE VIEW PetCatMale AS
SELECT id, name, owner, birth
FROM   pet
WHERE  species = 'Cat' AND gender = 'm'


SELECT * FROM PetCatMale


UPDATE PetCatMale SET name = 'Hello' WHERE id = 2


SELECT * FROM PetCatMale WHERE id = 2


SELECT * FROM pet WHERE id = 2


INSERT INTO PetCatMale VALUES (0, 'Danel', 'Sandra', '1998-12-3')


SELECT * FROM PetCatMale WHERE name = 'Danel'


SELECT * FROM pet WHERE name = 'Danel'


UPDATE pet SET species = 'Cat', gender = 'm' WHERE id = 9


CREATE OR REPLACE VIEW PetCatMale AS
SELECT id, name, owner, birth
FROM   pet
WHERE  species = 'Cat' AND gender = 'm'
WITH CHECK OPTION


INSERT INTO PetCatMale VALUES (0, 'Tiger', 'Sandra', '1998-12-18')


INSERT INTO pet VALUES (0, 'Tiger', 'Sandra', 'Cat', 'm', '1998-12-18')


SELECT * FROM PetCatMale
