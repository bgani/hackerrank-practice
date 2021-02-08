-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem

SELECT CAST(MAX(Lat_n) AS DECIMAL(20,4)) FROM Station WHERE Lat_n < 137.2345;