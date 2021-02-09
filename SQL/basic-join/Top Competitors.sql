-- https://www.hackerrank.com/challenges/full-score/problem

-- 1. select hackers who has full scores
/*
SELECT s.hacker_id, h.name FROM Submissions s
JOIN Hackers h ON s.hacker_id = h.hacker_id
JOIN Challenges c ON  s.challenge_id = c.challenge_id
JOIN Difficulty d ON d.difficulty_level = c.difficulty_level AND d.score = s.score
*/

-- 2. select only who hase more than one challenge
/*
SELECT s.hacker_id, h.name FROM Submissions s
JOIN Hackers h ON s.hacker_id = h.hacker_id
JOIN Challenges c ON  s.challenge_id = c.challenge_id
JOIN Difficulty d ON d.difficulty_level = c.difficulty_level AND d.score = s.score
GROUP BY s.hacker_id, h.name 
HAVING COUNT(s.challenge_id) > 1 
*/

-- 3. order desc by total number of challenges, order asc by hacker_id
SELECT s.hacker_id, h.name FROM Submissions s
JOIN Hackers h ON s.hacker_id = h.hacker_id
JOIN Challenges c ON  s.challenge_id = c.challenge_id
JOIN Difficulty d ON d.difficulty_level = c.difficulty_level AND d.score = s.score
GROUP BY s.hacker_id, h.name 
HAVING COUNT(s.challenge_id) > 1 
ORDER BY COUNT(s.challenge_id) DESC, s.hacker_id;
