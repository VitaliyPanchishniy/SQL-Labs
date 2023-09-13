Select id,name,population
From cities
ORDER BY population
LIMIT 10 OFFSET 10;


Select id,name,population
From cities
ORDER BY name desc
LIMIT 30;


Select id,name,population,region
From cities
ORDER BY region asc,population desc
LIMIT 30;

Select DISTINCT region
From cities;


Select id,name,population,region
From cities
ORDER BY region desc,name desc;