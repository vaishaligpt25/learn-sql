-- https://sqlbolt.com/lesson/deleting_rows

-- 1.......................................

DELETE FROM Movies
WHERE Year < 2005;

-- 2......................................

DELETE FROM Movies
WHERE Director = "Andrew Stanton";
