-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT(City) FROM Station WHERE LEFT(City, 1) NOT IN ('A','E','I','O','U') OR RIGHT(City, 1) NOT IN ('a','e','i','o','u');