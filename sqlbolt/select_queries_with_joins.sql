-- https://sqlbolt.com/lesson/select_queries_with_joins

-- 1.........................................................

SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- 2...........................................................

SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- 3..............................................................

SELECT Title, Rating
FROM Movies
  JOIN Boxoffice
  ON Movies.id = Boxoffice.movie_id
  ORDER BY Rating DESC;