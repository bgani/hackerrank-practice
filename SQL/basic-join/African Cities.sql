-- https://www.hackerrank.com/challenges/african-cities/problem

SELECT City.Name FROM City 
INNER JOIN Country ON City.CountryCode = Country.Code 
AND Continent = 'Africa';