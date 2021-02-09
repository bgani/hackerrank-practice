-- https://www.hackerrank.com/challenges/the-report/problem

-- Steps: 
-- 1. select columns Name, Grade, Mark from tables Students and Grades
-- 2. do not include names whose grades lower than 8, display those names as NULL
-- 3. order Grade by desc 
-- 4. order Name by asc 
-- 6. order Marks by asc

SELECT IIF(Grade < 8, NULL, Name), Grade, Marks
FROM Students 
JOIN Grades ON Marks BETWEEN Min_Mark AND Max_Mark
ORDER BY Grade DESC, Name, Marks;
