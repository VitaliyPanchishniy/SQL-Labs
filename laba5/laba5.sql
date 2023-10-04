SELECT r.uuid, r.name AS region_name, SUM(c.population) AS total_population
FROM regions r, cities c
WHERE r.uuid = c.region
GROUP BY r.uuid, r.name;

SELECT r.uuid, r.name AS region_name, SUM(c.population) AS total_population
FROM regions r, cities c
WHERE r.uuid = c.region
GROUP BY r.uuid, r.name
HAVING COUNT(c.id) >= 10;


SELECT c.name AS city_name, c.population
FROM cities c, regions r
WHERE c.region = r.uuid AND r.area_quantity >= 5
ORDER BY c.population 
LIMIT 5 OFFSET 10;


SELECT r.uuid, r.name AS region_name, SUM(c.population) AS total_population
FROM regions r, cities c
WHERE r.uuid = c.region AND c.population > 300000
GROUP BY r.uuid, r.name;


SELECT r.uuid, r.name AS region_name
FROM regions r
WHERE r.area_quantity <= 5 AND r.uuid NOT IN (
    SELECT c.region
    FROM cities c
    WHERE c.population BETWEEN 150000 AND 500000
);