-- https://sqlbolt.com/lesson/updating_rows

-- 1........................................

UPDATE
    movies
SET
    director = "John Lasseter"
WHERE
    id = 2;

-- 2.........................................

SELECT
    Movies
SET
    Year = 1999
WHERE
    id = 3;

-- 3........................................

UPDATE
    movies
SET
    title = "Toy Story 3", director = "Lee Unkrich"
WHERE
    id = 11;