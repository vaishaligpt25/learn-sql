-- https://sqlbolt.com/lesson/select_queries_with_constraints

-- 1...............................................
SELECT *
FROM movies
WHERE id = 6;

-- 2...................................................
SELECT *
FROM movies
WHERE YEAR BETWEEN 2000 AND 2010;

3----------------------------------------------------

SELECT *
FROM movies
WHERE YEAR NOT BETWEEN 2000 AND 2010;

-- 4...............................................

SELECT Title, Year
FROM Movies
ORDER BY Year
LIMIT 5;