-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem

/* Manhattan distance
The distance between two points measured along axes at right angles. 
In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|. 

In our case: |a - c| + | b - d| 
a - min lat_n
b - min long_w 
c - max lat_n
d - max long_w */


SELECT CAST(ABS(MIN(Lat_n) - MAX(Lat_n)) + ABS(MIN(Long_w) - MAX(Long_w)) as DECIMAL(20, 4)) FROM Station;