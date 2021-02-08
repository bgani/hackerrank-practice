-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem

SElECT TOP 1 CAST(Long_w as DECIMAL(20,4)) FROM Station 
WHERE Lat_n < 137.2345
ORDER BY Lat_n DESC;