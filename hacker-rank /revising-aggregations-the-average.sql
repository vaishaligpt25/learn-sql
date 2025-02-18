-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function

SELECT
    AVG(Population)
FROM
    City
WHERE
    District = 'California';