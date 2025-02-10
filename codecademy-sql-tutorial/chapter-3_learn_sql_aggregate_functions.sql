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