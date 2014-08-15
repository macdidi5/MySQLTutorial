mysql -u root


USE mylab;


PREPARE NewPet FROM
'INSERT INTO pet VALUES (0, ?, ?, ?, ?, ?)';


PREPARE NewPetEvent FROM
'INSERT INTO event (id, etype, remark) VALUES (LAST_INSERT_ID(), ?, ?)';


SET @my_name='Lucky', @my_owner='John', @my_species='dog', @my_gender='m', @my_birth='1999-1-3';


EXECUTE NewPet USING @my_name, @my_owner, @my_species, @my_gender, @my_birth;


SET @my_etype='kennel', @my_remark=NULL;


EXECUTE NewPetEvent USING @my_etype, @my_remark;


SELECT * FROM pet WHERE name='Lucky';


SELECT * FROM event WHERE id= 11;
