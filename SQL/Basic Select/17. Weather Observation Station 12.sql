-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem

SELECT DISTINCT City FROM Station 
WHERE LEFT(City,1) NOT IN ('A', 'E', 'I', 'O', 'U') AND 
RIGHT(City,1) NOT IN ('A', 'E', 'I', 'O', 'U');