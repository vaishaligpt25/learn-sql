-- https://sqlbolt.com/lesson/select_queries_order_of_execution

SELECT
    Director, COUNT(Title)
FROM
    Movies
GROUP BY
    Director;
