-- https://www.hackerrank.com/challenges/binary-search-tree-1/

SELECT 
    N, 
    CASE
        WHEN P IS NULL THEN "Root"
        WHEN N IN (SELECT DISTINCT P FROM BST) THEN "Inner"
        ELSE "Leaf"
    END AS RESULT
FROM BST
ORDER BY N;