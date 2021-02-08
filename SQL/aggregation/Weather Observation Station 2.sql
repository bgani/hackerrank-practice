-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem

SELECT CAST(SUM(Lat_n) as DECIMAL(10, 2)) as lat, CAST(SUM(Long_w) as DECIMAL(10,2)) as lon FROM Station;