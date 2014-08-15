SELECT CONCAT( 'Male: ',
               ( SELECT COUNT(*) FROM pet WHERE gender = 'm' GROUP BY gender),
               ', Female: ',
               ( SELECT COUNT(*) FROM pet WHERE gender = 'f' GROUP BY gender) )
       AS 'Pet Statistics'
