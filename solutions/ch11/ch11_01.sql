mysql -u root


USE mylab;


PREPARE FindPet FROM
'SELECT * FROM pet WHERE name = ?';


SET @my_name = 'Slim';


EXECUTE FindPet USING @my_name;


SET @my_name = 'Buffy';


EXECUTE FindPet USING @my_name;
