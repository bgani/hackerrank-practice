-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem

SELECT DISTINCT City FROM Station WHERE LEFT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U');