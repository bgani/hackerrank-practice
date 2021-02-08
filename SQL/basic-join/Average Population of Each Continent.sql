-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM City
INNER JOIN Country ON City.CountryCode = Country.Code
GROUP BY Country.Continent;