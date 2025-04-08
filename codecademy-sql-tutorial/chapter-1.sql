CREATE TABLE table_name (
   column_1 data_type, 
   column_2 data_type, 
   column_3 data_type
);

-- Let’s break down the components of a statement:
--
-- 
-- CREATE TABLE
--  is a clause. Clauses perform specific tasks in SQL. By convention, clauses are written in capital letters. Clauses can also be referred to as commands.
-- table_name refers to the name of the table that the command is applied to.
-- (column_1 data_type, column_2 data_type, column_3 data_type) is a parameter. A parameter is a list of columns,
-- 
-- data types
-- , or values that are passed to a clause as an argument. Here, the parameter is a list of column names and the associated data type.
-- The structure of SQL statements vary. The number of lines used does not matter. A statement can be written all on one line, or split up across multiple lines if it makes it easier to read. In this course, you will become familiar with the structure of common statement


CREATE TABLE celebs (
   id INTEGER,
   name TEXT,
   age INTEGER
);

-- 1.
-- 
-- CREATE TABLE
--  is a clause that tells SQL you want to create a new table.
-- 2. celebs is the name of the table.
-- 3. (id INTEGER, name TEXT, age INTEGER) is a list of parameters defining each column, or attribute in the table and its data type
-- :
-- id is the first column in the table. It stores values of data type INTEGER
-- name is the second column in the table. It stores values of data type TEXT
-- age is the third column in the table. It stores values of data type INTEGER



INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 29);

-- 
-- INSERT INTO
--  is a clause that adds the specified row or rows.
-- celebs is the table the row is added to.
-- (id, name, age) is a parameter identifying the columns that data will be inserted into.
-- VALUES is a clause that indicates the data being inserted.
-- (1, 'Justin Bieber', 29) is a parameter identifying the values being inserted.
-- 1: an integer that will be added to id column
-- 'Justin Bieber': text that will be added to name column
-- 29: an integer that will be added to age column


-- SELECT:-
-- SELECT statements are used to fetch data from a database. In the statement below, SELECT returns all data in the name column of the celebs table.
-- SELECT name FROM celebs;
SELECT name FROM celebs;
-- 1.
-- Preview content is loading
-- SELECT
--  is a clause that indicates that the statement is a query. You will use SELECT every time you query data from a database.
-- 2. name specifies the column to query data from.
-- 3. FROM celebs specifies the name of the table to query data from. In this statement, data is queried from the celebs table.
SELECT * FROM celebs;
-- * is a special wildcard character that we have been using. It allows you to select every column in a table without having to name each one individually.
-- Here, the result set contains every column in the celebs table.
--
-- SELECT statements always return a new table called the result set.

-- Alter:-
-- The ALTER TABLE statement adds a new column to a table. You can use this command when you want to add columns to a table. The statement below adds a new column twitter_handle to the celebs table.
ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;
-- 1.
-- Preview: Docs Adds, deletes, modifies or changes the data type of a column in a table.
-- ALTER TABLE
--  is a clause that lets you make the specified changes.
-- 2. celebs is the name of the table that is being changed.
-- 3. ADD COLUMN is a clause that lets you add a new column to a table:
--
-- twitter_handle is the name of the new column being added
-- TEXT is the data type for the new column
-- 4. NULL is a special value in SQL that represents missing or unknown data. Here, the rows that existed before the column was added have NULL (∅) values for twitter_handle.

-- Update
-- The UPDATE statement edits a row in a table. You can use the UPDATE statement when you want to change existing records. The statement below updates the record with an id value of 4 to have the twitter_handle @taylorswift13.
UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;
-- 1.
--
-- UPDATE
--  is a clause that edits a row in the table.
-- 2. celebs is the name of the table.
-- 3. SET is a clause that indicates the column to edit.
--
-- twitter_handle is the name of the column that is going to be updated
-- @taylorswift13 is the new value that is going to be inserted into the twitter_handle column.
-- 4. WHERE is a clause that indicates which row(s) to update with the new column value. Here the row with a 4 in the id column is the row that will have the twitter_handle updated to @taylorswift13.



-- Delete
-- The DELETE FROM statement deletes one or more rows from a table. You can use the statement when you want to delete existing records. The statement below deletes all records in the celebs table with no twitter_handle:
DELETE FROM celebs
WHERE twitter_handle IS NULL;
-- 
-- DELETE FROM
--  is a clause that lets you delete rows from a table.
-- celebs is the name of the table we want to delete rows from.
-- Preview: Docs Filters records (rows) that match a certain condition.
-- WHERE
--  is a clause that lets you select which rows you want to delete. Here we want to delete all of the rows where the twitter_handle column IS NULL.
-- IS NULL is a condition in SQL that returns true when the value is NULL and false otherwise.





-- Constraints
-- Preview: Docs Constraints in SQL are the rules applied to the values of individual columns. They add information about how a column can be used after specifying the data type for a column. They can be used to tell the database to reject inserted data that does not adhere to a certain restriction. Here are some of the constraints that can be set: - PRIMARY KEY columns can be used to uniquely identify the row. Attempts to insert a row with an identical value to a row already in the table will result in a constraint violation which will not allow you to insert the new row. - UNIQUE columns have a different value for every row. This is similar to PRIMARY KEY except a table can have many different UNIQUE columns. - NOT NULL columns must have a value. Attempts to insert a row without a value for a NOT NULL column will result in a constraint violation and the new row will not be inserted. - DEFAULT columns take an additional argument that will be the assumed value for an inserted row if the new row does not specify a value for that column. Note: There can be only one PRIMARY KEY column per table, but there can be multiple UNIQUE columns.
-- Constraints
--  that add information about how a column can be used are invoked after specifying the data type for a column. They can be used to tell the database to reject inserted data that does not adhere to a certain restriction. The statement below sets constraints on the celebs table.
CREATE TABLE celebs (
   id INTEGER PRIMARY KEY,
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   date_of_death TEXT DEFAULT 'Not Applicable'
);

-- 1. PRIMARY KEY columns can be used to uniquely identify the row. Attempts to insert a row with an identical value to a row already in the table will result in a constraint violation which will not allow you to insert the new row.
--
-- 2. UNIQUE columns have a different value for every row. This is similar to PRIMARY KEY except a table can have many different UNIQUE columns.
--
-- 3. NOT NULL columns must have a value. Attempts to insert a row without a value for a NOT NULL column will result in a constraint violation and the new row will not be inserted.
--
-- 4. DEFAULT columns take an additional argument that will be the assumed value for an inserted row if the new row does not specify a value for that column.


-- Review
--
-- Preview: Docs SQL, Structured Query Language, is a programming language designed to manage data stored in these relational databases. SQL operates through simple, declarative statements. This keeps data accurate and secure, and it helps maintain the integrity of databases, regardless of size. We live in a data-informed world, and there are many businesses that store their information inside large, relational databases. This makes SQL a great skill not only for data scientists and engineers, but for anyone wanting to be data-literate.
-- SQL
--  is a programming language designed to manipulate and manage data stored in relational databases.
--
-- A relational database is a database that organizes information into one or more tables.
-- A table is a collection of data organized into rows and columns.
-- A statement is a string of characters that the database recognizes as a valid command.
--
-- CREATE TABLE
--  creates a new table.
--
-- INSERT INTO
--  adds a new row to a table.
--
-- SELECT
--  queries data from a table.
--
-- ALTER TABLE
--  changes an existing table.
--
-- UPDATE
--  edits a row in a table.
--
-- DELETE FROM
--  deletes rows from a table.
--
-- Constraints
--  add information about how a column can be used.