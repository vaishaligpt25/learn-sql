-- Aggregate Functions Introduction:
--
-- SQL Queries don’t just access raw data, they can also perform calculations on the raw data to answer specific data questions.
-- Calculations performed on multiple rows of a table are called aggregates.
-- In this lesson, we have given you a table named fake_apps which is made up of fake mobile applications data.
-- Here is a quick preview of some important aggregates that we will cover in the next five exercises:
--
-- COUNT()
-- : count the number of rows
--
-- SUM()
-- : the sum of the values in a column
--
-- MAX()
-- /
-- MIN()
-- : the largest/smallest value
--
-- AVG()
-- : the average of the values in a column
--
-- ROUND()
-- : round the values in the column

--------------------------------------------------

-- Count:
-- The fastest way to calculate how many rows are in a table is to use the COUNT() function.
-- COUNT()
--  is a function that takes the name of a column as an argument and counts the number of non-empty values in that column.

SELECT COUNT(*)
FROM table_name;

-- Here, we want to count every row, so we pass * as an argument inside the parenthesis.

-------------------------------------------------

-- Sum:
-- SQL makes it easy to add all values in a particular column using SUM().
-- SUM() is a function that takes the name of a column as an argument and returns the sum of all the values in that column.
-- What is the total number of downloads for all of the apps combined?

SELECT SUM(downloads)
FROM fake_apps;
--
-- This adds all values in the downloads column.

--------------------------------------------------

-- Max / Min
-- The MAX() and MIN() functions return the highest and lowest values in a column, respectively.
-- How many downloads does the most popular app have?
SELECT MAX(downloads)
FROM fake_apps;

-- The most popular app has 31,090 downloads!
-- MAX() takes the name of a column as an argument and returns the largest value in that column. Here, we returned the largest value in the downloads column.
--
-- MIN() works the same way but it does the exact opposite; it returns the smallest value.

-------------------------------------------------

Average:
SELECT AVG(downloads)
FROM fake_apps;
-- The AVG() function works by taking a column name as an argument and returns the average value for that column.

---------------------------------------------------

-- Round:
-- By default, SQL tries to be as precise as possible without rounding. We can make the result table easier to read using the ROUND() function.
-- ROUND() function takes two arguments inside the parenthesis:
-- 1.a column name
-- 2.an integer
-- It rounds the values in the column to the number of decimal places specified by the integer.
SELECT ROUND(price, 0)
FROM fake_apps;

-------------------------------------------------

-- Group By I:
-- For instance, we might want to know the mean IMDb ratings for all movies each year.
-- We could calculate each number by a series of queries with different WHERE statements, like so:
SELECT AVG(imdb_rating)
FROM movies
WHERE year = 1999;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2000;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2001;

-- and so on.
-- Luckily, there’s a better way!
-- We can use
-- GROUP BY to do this in a single step:

SELECT year,
   AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year;

-- GROUP BY is a clause in SQL that is used with aggregate functions.
-- Preview: Docs In SQL, aggregate functions perform a calculation on a set of values and return a single value. They are often used with the GROUP BY clause of the SELECT statement. Note: Except for COUNT(), aggregate functions ignore all NULL values. List all the years and their number of movies, but only the years with more than 5 movies: sql SELECT year, COUNT() FROM movies
-- . It is used in collaboration with the SELECT statement to arrange identical data into groups.
-- Preview: Docs Every SQL query will begin with the SELECT command to fetch data from one or more tables.
-- The GROUP BY statement comes after any WHERE statements, but before ORDER BY or LIMIT

-------------------------------------------------------------

-- Group By II
-- Sometimes, we want to
-- GROUP BY a calculation done on a column.
-- For instance, we might want to know how many movies have IMDb ratings that round to 1, 2, 3, 4, 5. We could do this using the following syntax:
SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY ROUND(imdb_rating)
ORDER BY ROUND(imdb_rating);

-- However, this query may be time-consuming to write and more prone to error.
-- SQL lets us use column reference(s) in our GROUP BY that will make our lives easier.
-- 1 is the first column selected
-- 2 is the second column selected
-- 3 is the third column selected
-- and so on.
-- The following query is equivalent to the one above:

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;

------------------------------------------------------

-- Having:
-- In addition to being able to group data using GROUP BY, SQL also allows you to filter which groups to include and which to exclude.
-- For instance, imagine that we want to see how many movies of different genres were produced each year, but we only care about years and genres with at least 10 movies.
-- We can’t use WHERE here because we don’t want to filter the rows; we want to filter groups.
-- This is where HAVING comes in.
-- HAVING is very similar to WHERE. In fact, all types of WHERE clauses you learned about thus far can be used with HAVING.
-- We can use the following for the problem:
SELECT year,
   genre,
   COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10;

-- When we want to limit the results of a query based on values of the individual rows, use WHERE.
-- When we want to limit the results of a query based on an aggregate property, use HAVING.
-- HAVING statement always comes after GROUP BY, but before ORDER BY and LIMIT
-- .

-------------------------------------------------

-- Review:
--
-- COUNT()
-- : count the number of rows
-- Preview: Docs Returns the sum of all the value in that column.
-- SUM()
-- : the sum of the values in a column
-- MAX()
-- MIN()
-- : the largest/smallest value in a column.
-- AVG()
-- : the average of the values in a column
-- ROUND()
-- : round the values in the column
--
-- Aggregate functions combine multiple rows together to form a single value of more meaningful information.
--
-- GROUP BY
--  is a clause used with aggregate functions to combine data from one or more columns.
--
-- HAVING
--  limit the results of a query based on an aggregate property.