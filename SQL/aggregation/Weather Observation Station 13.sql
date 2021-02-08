-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem

SELECT CAST(SUM(Lat_n) AS DECIMAL(20, 4)) FROM Station WHERE Lat_n > 38.7880 AND Lat_n < 137.2345;