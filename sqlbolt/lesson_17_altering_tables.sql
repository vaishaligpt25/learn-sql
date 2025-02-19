-- https://sqlbolt.com/lesson/altering_tables

-- 1................................................

ALTER TABLE Movies
  ADD COLUMN Aspect_ratio FLOAT ;

-- 2................................................

ALTER TABLE Movies
  ADD COLUMN Language TEXT DEFAULT "English";