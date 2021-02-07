-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

SELECT DISTINCT(CITY) FROM Station WHERE RIGHT(City, 1) in ('A', 'E', 'I', 'O', 'U');