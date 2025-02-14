-- https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2

-- 1.................................................
SELECT Title
FROM movies
WHERE Title LIKE 'Toy Story%';

-- 2...................................................

SELECT *
FROM Movies
WHERE Director LIKE 'John Lasseter';

-- 3....................................................

SELECT *
FROM Movies
WHERE Director NOT LIKE 'John Lasseter';

-- 4-------------------------------------------------------

SELECT *
FROM Movies
WHERE Title LIKE 'WALL-%';