-- https://www.hackerrank.com/challenges/sql-projects/problem

-- step 1. select all start_dates and add row number by excluding all end_dates
-- if a Start_Date is not in End_Date, then it is start of a new project
/* SELECT Start_Date, ROW_NUMBER() OVER (ORDER BY Start_Date) AS RN FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects) as T1;
*/

-- step 2. select all end_date and add row number by excluding all start_date
-- if a End_Date is not in Start_Date, then it is the end of a project
/* SELECT End_Date, ROW_NUMBER() OVER (OrDER BY End_Date) AS RN FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects) as T2
*/

-- step 3. when we inner join T1 and T2 by RN, Start_Date and End_Date columns will match to start and end of a project
-- step 4. order by number of days that took to complete the project
-- setp 5. order by Start_Date

SELECT T1.Start_Date, T2.End_Date FROM 
(SELECT Start_Date, ROW_NUMBER() OVER (ORDER BY Start_Date) AS RN FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) AS T1
INNER JOIN 
(SELECT End_Date, ROW_NUMBER() OVER (OrDER BY End_Date) AS RN FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS T2
ON T1.RN = T2.RN
ORDER BY DATEDIFF(Day,T1.Start_Date,T2.End_Date), T1.Start_Date
