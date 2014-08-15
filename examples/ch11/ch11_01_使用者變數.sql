SET @my_continent = 'Asia'


SET @my_continent2 = 'Europe'


SELECT @my_continent, @my_continent2


SET @my_region = 'Eastern Asia', @my_region2 = 'Middle Asia'


SELECT @my_region, @my_region2


SELECT @my_gnp := 30000, @my_gnp2 := 5000


SELECT @my_gnp, @my_gnp2


SET @my_continent = 'Asia';


SET @my_continent2 = 'Europe';


SELECT Continent, Name, GNP, Population
FROM   country
WHERE  Continent IN (@my_continent, @my_continent2)


SELECT @max_gnp := MAX(GNP), 
       @max_population := MAX(Population)
FROM   country


SELECT Name, GNP, Population
FROM   country
WHERE  gnp = @max_gnp OR Population = @max_population


SELECT Name, @max_gnp - GNP, @max_population - Population
FROM   country
