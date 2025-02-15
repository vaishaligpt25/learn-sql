-- https://sqlbolt.com/lesson/select_queries_with_expressions

-- 1........................................................

SELECT title, (domestic_sales + international_sales) / 1000000
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- 2......................................................

SELECT Title , (Rating * 10) AS rating percentage
FROM Movies
   JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id;

-- 3....................................................

SELECT title, year
FROM movies
WHERE year % 2 = 0;