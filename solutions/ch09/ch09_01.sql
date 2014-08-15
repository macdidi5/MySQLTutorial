SELECT *
FROM   pet
WHERE  owner = ( SELECT owner
                 FROM   pet
                 WHERE  name = 'Whistler' )


SELECT *
FROM   pet
WHERE  birth < ( SELECT birth
                 FROM   pet
                 WHERE  name = 'Slim' )


SELECT *
FROM   pet
WHERE  (species, gender) = ( SELECT species, gender
                             FROM   pet
                             WHERE  name = 'Fang' )


SELECT *
FROM   pet
WHERE  id IN ( SELECT   id
               FROM     event
               GROUP BY id
               HAVING   COUNT(*) > 1 )
