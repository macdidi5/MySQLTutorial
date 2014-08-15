SELECT *
FROM   pet p
WHERE  birth = ( SELECT MIN(birth)
                 FROM   pet
                 WHERE  species = p.species )


SELECT *
FROM   pet p
WHERE  (species, birth) IN ( SELECT   species, MIN(birth)
                             FROM     pet
                             GROUP BY species )
