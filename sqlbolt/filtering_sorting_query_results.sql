-- https://sqlbolt.com/lesson/filtering_sorting_query_results

-- 1..........................................................

SELECT DISTINCT director
FROM movies
ORDER BY director ASC;

-- 2..........................................................

SELECT *
FROM Movies
ORDER BY Year DESC
LIMIT 4;

-- 3-----------------------------------------------------------

SELECT *
FROM Movies
ORDER BY Title
LIMIT 5;

-- 4...........................................................

SELECT *
FROM Movies
ORDER BY Title
LIMIT 5 OFFSET 5;