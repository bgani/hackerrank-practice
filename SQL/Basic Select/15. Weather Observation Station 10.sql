-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem

SELECT DISTINCT(City) FROM Station WHERE RIGHT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U');