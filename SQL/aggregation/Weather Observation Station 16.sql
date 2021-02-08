-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem

SELECT TOP 1 CAST(Lat_n as DECIMAL(20,4)) FROM Station WHERE Lat_n > 38.7780 ORDER BY Lat_n;