-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT TOP 1 City, LEN(City)  FROM Station ORDER BY LEN(City) DESC, City ASC

SELECT TOP 1 City, LEN(City)  FROM Station ORDER BY LEN(City), City ASC