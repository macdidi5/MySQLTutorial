SELECT * INTO OUTFILE 'C:/cmdev/data/out/pet.txt'
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r'
FROM   pet


CREATE TABLE pet2 LIKE pet


DESC pet2


SELECT * FROM pet2


LOAD DATA LOCAL INFILE 'C:/cmdev/data/out/pet.txt'
INTO TABLE pet2
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r'
(id, name, owner, @v_species, gender, birth)
SET species = UPPER(@v_species)


SELECT * FROM pet2
