-- https://www.hackerrank.com/challenges/challenges/problem

/* data is a cte, - common table expresssion */
WITH data 
AS
(
/* select students and their total number of challenges */
SELECT c.hacker_id as id, h.name as name, COUNT(c.hacker_id) as challenge_count
FROM Hackers h
JOIN Challenges c on c.hacker_id = h.hacker_id
GROUP BY c.hacker_id, h.name
)
SELECT id, name, challenge_count
FROM data
WHERE
/* condition to select students that don't have similar total number of challenges */
challenge_count in (SELECT challenge_count FROM data
GROUP BY challenge_count
HAVING COUNT(challenge_count)=1 ) 
OR
/* condition to select students with max challenge_count */
challenge_count=(SELECT MAX(challenge_count) FROM data) 
ORDER BY challenge_count desc, id