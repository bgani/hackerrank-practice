-- https://www.hackerrank.com/challenges/asian-population/problem

-- INNER JOIN = JOIN, INNER is optional

SELECT SUM(City.Population) FROM City
INNER JOIN Country ON City.CountryCode = Country.Code 
AND Country.Continent = 'Asia';