SELECT name, population
FROM cities
WHERE population > 1000000;


SELECT name, population, region
FROM cities
WHERE region ='E' or region ='W'
Order by population desc;

SELECT name, population, region
FROM cities
WHERE region in( 'C','S','N') and population >50000;

SELECT name, population, region, id
FROM cities
WHERE region in( 'E','W','N') and population >150000 and population <350000
ORDER BY name
limit 20;

SELECT name, population, region, id
FROM cities
WHERE not region in( 'E','W') 
ORDER BY population
LIMIT 10 OFFSET 10;