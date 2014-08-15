ALTER TABLE pet ADD INDEX pet_name_index (name)


CREATE INDEX pet_owner_index ON pet (owner)


SHOW INDEX FROM pet


DROP INDEX pet_owner_index ON pet


SHOW INDEX FROM pet
