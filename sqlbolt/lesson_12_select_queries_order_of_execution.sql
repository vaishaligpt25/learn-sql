-- https://sqlbolt.com/lesson/select_queries_order_of_execution

-- 1.................................................

SELECT
    Director, COUNT(Title)
FROM
    Movies
GROUP BY
    Director;

-- 2..............................................................

SELECT
    Director,
    SUM(Domestic_sales + International_sales) AS Cumulative_Sales_from_all_movies
FROM Movies
 JOIN Boxoffice
   ON Movies.ID = Boxoffice.Movie_ID
GROUP BY Director;

