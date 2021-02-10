-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

SELECT id, age, coins_needed, power FROM Wands w
JOIN Wands_Property wp ON w.code = wp.code AND coins_needed = 
(SELECT MIN (coins_needed) FROM Wands w1 
JOIN Wands_Property wp1 on wp.code = w1.code AND w.power = w1.power AND wp.age = wp1.age and wp1.is_evil = 0)
ORDER BY power DESC, age DESC;