SELECT c.name AS city_name, r.name AS region_name
FROM cities c, regions r
WHERE c.region = r.uuid
AND c.population > 350000;

SELECT c.name AS city_name
FROM cities c, regions r
WHERE c.region = r.uuid
AND r.name = 'Nord';


CREATE TABLE Cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(255)
);

CREATE TABLE MetroLines (
    line_id INT PRIMARY KEY,
    city_id INT,
    line_name VARCHAR(255),
    FOREIGN KEY (city_id) REFERENCES Cities(city_id)
);

CREATE TABLE Stations (
    station_id INT PRIMARY KEY,
    line_id INT,
    station_name VARCHAR(255),
    FOREIGN KEY (line_id) REFERENCES MetroLines(line_id)
);

CREATE TABLE Connections (
    connection_id INT PRIMARY KEY,
    station_id_1 INT,
    station_id_2 INT,
    FOREIGN KEY (station_id_1) REFERENCES Stations(station_id),
    FOREIGN KEY (station_id_2) REFERENCES Stations(station_id)
);
