--chapter link:- https://www.codecademy.com/learn/learn-sql-multiple-tables

-- Multiple Tables Introduction:
-- In order to efficiently store data, we often spread related information across multiple tables.
-- For instance, imagine that we’re running a magazine company where users can have different types of subscriptions to different products. Different subscriptions might have many different properties. Each customer would also have lots of associated information.
-- We could have one table with all of the following information:
--
-- order_id
-- customer_id
-- customer_name
-- customer_address
-- subscription_id
-- subscription_description
-- subscription_monthly_price
-- subscription_length
-- purchase_date
--
-- However, a lot of this information would be repeated. If the same customer has multiple subscriptions, that customer’s name and address will be reported multiple times. If the same subscription type is ordered by multiple customers, then the subscription price and subscription description will be repeated. This will make our table big and unmanageable.
-- So instead, we can split our data into three tables:
--
-- 1. orders would contain just the information necessary to describe what was ordered:
-- order_id, customer_id, subscription_id, purchase_date
-- 2. subscriptions would contain the information to describe each type of subscription:
-- subscription_id, description, price_per_month, subscription_length
-- 3. customers would contain the information for each customer:
-- customer_id, customer_name, address
--
-- In this lesson, we’ll learn the SQL commands that will help us work with data that is stored in multiple tables.
SELECT *
FROM orders
LIMIT 5;

SELECT *
FROM subscriptions
LIMIT 5;

SELECT *
FROM customers
LIMIT 5;

--------------------------------------------------------------------

-- Combining Tables Manually:
-- Let’s return to our magazine company. Suppose we have the three tables described in the previous exercise – shown in the browser on the right (we are going to try something new!):
-- orders
-- subscriptions
-- customers
-- If we just look at the orders table, we can’t really tell what’s happened in each order. However, if we refer to the other tables, we can get a complete picture.
-- Let’s examine the order with an order_id of 2. It was purchased by the customer with a customer_id of 2.
-- To find out the customer’s name, we look at the customers table and look for the item with a customer_id value of 2. We can see that Customer 2’s name is ‘Jane Doe’ and that she lives at ‘456 Park Ave’.
-- Doing this kind of matching is called joining two tables.

-------------------------------------------------------------------------

-- Combining Tables with SQL:
-- Combining tables manually is time-consuming. Luckily, SQL gives us an easy sequence for this: it’s called a JOIN.
-- If we want to combine orders and customers, we would type:
SELECT *
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id

-- Let’s break down this command:
-- The first line selects all columns from our combined table. If we only want to select certain columns, we can specify which ones we want.
-- The second line specifies the first table that we want to look in, orders
-- The third line uses JOIN to say that we want to combine information from orders with customers.
-- The fourth line tells us how to combine the two tables. We want to match orders table’s customer_id column with customers table’s customer_id column.
-- Because column names are often repeated across multiple tables, we use the syntax table_name.column_name to be sure that our requests for columns are unambiguous. In our example, we use this syntax in the ON statement, but we will also use it in the
-- SELECT or any other statement where we refer to column names.
-- For example: Instead of selecting all the columns using *, if we only wanted to select orders table’s order_id column and customers table’s customer_name column, we could use the following query:
SELECT orders.order_id,
   customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id
  = customers.customer_id;

-- QUES:-Join orders table and subscriptions table and select all columns.
-- Make sure to join on the subscription_id column.
SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;

-----------------------------------------------------

-- Inner Joins:
-- Let’s revisit how we joined orders and customers. For every possible value of customer_id in orders, there was a corresponding row of customers with the same customer_id.
-- What if that wasn’t true?
-- For instance, imagine that our customers table was out of date, and was missing any information on customer 11. If that customer had an order in orders, what would happen when we joined the tables?
-- When we perform a simple JOIN (often called an inner join) our result only includes rows that match our ON condition.
-- Consider the following animation, which illustrates an inner join of two tables on table1.c2 = table2.c2:

--------------------------------------------------------

-- Left Joins:
-- What if we want to combine two tables and keep some of the un-matched rows?
-- SQL lets us do this through a command called
-- LEFT JOIN: A left join will keep all rows from the first table, regardless of whether there is a matching row in the second table.

SELECT *
FROM table1
LEFT JOIN table2
  ON table1.c2 = table2.c2;

-- The first line selects all columns from both tables.
-- The second line selects table1 (the “left” table).
-- The third line performs a LEFT JOIN on table2 (the “right” table).
-- The fourth line tells SQL how to perform the join (by looking for matching values in column c2).

-- Primary Key vs Foreign Key:
-- Note that customer_id (the primary key for customers) and subscription_id (the primary key for subscriptions) both appear in this.
-- When the primary key for one table appears in a different table, it is called a foreign key.
-- So customer_id is a primary key when it appears in customers, but a foreign key when it appears in orders.

-------------------

-- Union:
-- Sometimes we just want to stack one dataset on top of the other. Well, the UNION operator allows us to do that.

SELECT *
FROM table1
UNION
SELECT *
FROM table2;

-- SQL has strict rules for appending data:
--
-- Tables must have the same number of columns.
-- The columns must have the same data types in the same order as the first table.
--
-- With:
-- Often times, we want to combine two tables, but one of the tables is the result of another calculation.

-- Review:
--
-- JOIN
--  will combine rows from different tables if the join condition is true.
--
--
-- LEFT JOIN
--  will return every row in the left table, and if the join condition is not met, NULL values are used to fill in the columns from the right table.
--
--
-- Primary key
--  is a column that serves a unique identifier for the rows in the table.
--
--
-- Foreign key
--  is a column that contains the primary key to another table.
--
--
-- CROSS JOIN
--  lets us combine all rows of one table with all rows of another table.
--
--
-- UNION
--  stacks one dataset on top of another.
--
--
-- WITH
--  allows us to define one or more temporary tables that can be used in the final query.