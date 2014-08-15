DROP TABLE IF EXISTS mycountry


SET @my_code := 'JPN'


SELECT @pop_var := Population
FROM   country
WHERE  Code = @my_code


CREATE TABLE mycountry
SELECT   Code, Name, GNP, Population
FROM     country
WHERE    Code = @my_code OR Population > @pop_var
ORDER BY Population
