-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

SELECT COUNT(*) - COUNT(DISTINCT City) FROM Station;