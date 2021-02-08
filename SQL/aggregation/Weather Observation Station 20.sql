-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem

/*
There is no median() function in t-sql. 
Using offest / fetch we move to the row that is one before half the count, then take the next one or two rows depending on whether the count was odd or even. 
*/

DECLARE @median DECIMAL(20, 4);
DECLARE @count BIGINT = (SELECT COUNT(*) FROM Station);
 
SET @median = (SELECT AVG(1.0 * Lat_n)
FROM (
    SELECT Lat_n FROM Station
     ORDER BY Lat_n
     OFFSET (@count - 1) / 2 ROWS
     FETCH NEXT 1 + (1 - @count % 2) ROWS ONLY
) AS x);

SELECT @median;