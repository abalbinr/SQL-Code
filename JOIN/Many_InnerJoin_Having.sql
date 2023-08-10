-- https://www.hackerrank.com/challenges/full-score/

SELECT ID, NAME
FROM 
    (SELECT HACKERS.HACKER_ID AS ID, MAX(HACKERS.NAME) AS NAME, COUNT(HACKERS.NAME) AS FULLSCORES
    FROM HACKERS 
        INNER JOIN SUBMISSIONS
        ON HACKERS.HACKER_ID = SUBMISSIONS.HACKER_ID
        INNER JOIN CHALLENGES
        ON CHALLENGES.CHALLENGE_ID = SUBMISSIONS.CHALLENGE_ID
        INNER JOIN DIFFICULTY
        ON CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
    WHERE SUBMISSIONS.SCORE = DIFFICULTY.SCORE 
    GROUP BY ID
    HAVING FULLSCORES > 1
    ORDER BY FULLSCORES DESC, ID) 
AS TABLE1;