-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

SELECT City FROM Station WHERE SUBSTRING(City, 1, 1) in ('a', 'e', 'i', 'o', 'u');