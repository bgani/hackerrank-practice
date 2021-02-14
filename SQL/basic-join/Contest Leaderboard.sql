-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

SELECT h.hacker_id, h.name, SUM(score) FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS score FROM Submissions
    GROUP BY hacker_id, challenge_id
) AS t 
JOIN Hackers h on t.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(score) > 0
ORDER BY SUM(score) DESC, h.hacker_id

