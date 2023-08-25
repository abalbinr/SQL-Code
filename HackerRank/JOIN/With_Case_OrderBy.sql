-- https://www.hackerrank.com/challenges/the-report/

WITH GRADE_STUDENTS AS (
    SELECT 
        NAME,
        MARKS,
        CASE
            WHEN MARKS=100 THEN 10
            ELSE FLOOR(MARKS/10)+1
        END AS GRADE
    FROM STUDENTS
)
SELECT 
    CASE
        WHEN GRADE >= 8 THEN NAME
        ELSE NULL
    END AS NEWNAME, 
    GRADE, 
    MARKS
FROM GRADE_STUDENTS
ORDER BY GRADE DESC, NEWNAME, MARKS;