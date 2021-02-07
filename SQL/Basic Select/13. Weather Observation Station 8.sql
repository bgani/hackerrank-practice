-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

SELECT DISTINCT(City) FROM Station 
WHERE RIGHT(City, 1) in ('A', 'E', 'I', 'O', 'U') 
AND LEFT(City, 1) in ('A', 'E', 'I', 'O', 'U');