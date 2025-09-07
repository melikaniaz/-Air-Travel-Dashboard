USE flightsdb;

LOAD DATA LOCAL INFILE 'C:\\Users\\Melika\\Downloads\\archive (19)\\airlines_flights_data.csv'
INTO TABLE flights
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(id, airline, flight, source_city, departure_time, stops,
 arrival_time, destination_city, class, duration, days_left, price);
 
SHOW TABLES;

USE flightsdb;
SHOW TABLES;

USE flightsdb;

LOAD DATA LOCAL INFILE 'C:\\Users\\Melika\\Downloads\\archive (19)\\airlines_flights_data.csv'
INTO TABLE flights
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(id, airline, flight, source_city, departure_time, stops,
 arrival_time, destination_city, class, duration, days_left, price);
SELECT * FROM flights LIMIT 10;
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) AS total_flights FROM flights;
SELECT COUNT(DISTINCT airline) AS airlines FROM flights;
SELECT COUNT(DISTINCT source_city) AS source_cities,
       COUNT(DISTINCT destination_city) AS dest_cities
FROM flights;


SELECT class,
       COUNT(*) AS flights_count,
       MIN(price) AS min_price,
       ROUND(AVG(price),0) AS avg_price,
       MAX(price) AS max_price
FROM flights
GROUP BY class;
SELECT flight, source_city, destination_city, COUNT(*) AS c
FROM flights
GROUP BY flight, source_city, destination_city
HAVING c > 1;
CREATE TABLE flights_clean AS
SELECT DISTINCT *
FROM flights;

