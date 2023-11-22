SELECT c.name AS city_name, r.name AS region_name
FROM cities c, regions r
WHERE c.region = r.uuid
AND c.population > 350000;

SELECT c.name AS city_name
FROM cities c, regions r
WHERE c.region = r.uuid
AND r.name = 'Nord';


CREATE TABLE cities (
    id INT PRIMARY KEY,
    city_name VARCHAR(255) NOT NULL
);

CREATE TABLE metroLines (
    id INT PRIMARY KEY,
    city_id INT,
    line_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (city_id) REFERENCES cities(id)
);

CREATE TABLE stations (
    id INT PRIMARY KEY,
    line_id INT,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (line_id) REFERENCES metroLines(id)
);

CREATE TABLE connections (
    id INT PRIMARY KEY,
    previous_station_id INT,NOT NULL,
    netx_station_id INT,NOT NULL,
    FOREIGN KEY (previous_station_id) REFERENCES stations(id),
    FOREIGN KEY (netx_station_id) REFERENCES stations(id)
);

CREATE TABLE perehids (
    id INT PRIMARY KEY,
    from_station_id INT NOT NULL,
    to_station_id INT NOT NULL,
    FOREIGN KEY (from_station_id) REFERENCES stations(id),
    FOREIGN KEY (to_station_id) REFERENCES stations(id)
);
