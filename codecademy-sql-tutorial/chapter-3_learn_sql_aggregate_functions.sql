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
