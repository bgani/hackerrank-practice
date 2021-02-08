-- https://www.hackerrank.com/challenges/the-pads/problem

SELECT Name + '('+ SUBSTRING(Occupation, 1, 1) + ')' FROM Occupations ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(*), + ' ' + LOWER(Occupation) + 's.') Occupation FROM Occupations 
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;