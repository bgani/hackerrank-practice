-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

SELECT TOP 1 Months * Salary as Earnings, COUNT(*) FROM Employee 
GROUP BY (Months * Salary) 
ORDER BY Earnings DESC;