-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem

/* 
Euclidean distance:
d(p,q) = ((q1-p1)^2 - (q2-p2)^2)^1/2 

P1(a,c) and P2(b,d)
a = min lat_n
b = max lat_n
c = min long_w
d = max long_w
*/

SELECT CAST(SQRT(
POWER(MAX(Lat_n) - MIN(Lat_n), 2) + 
POWER(MAX(Long_w) - MIN(Long_w), 2)) 
AS DECIMAL(20, 4))
FROM Station;