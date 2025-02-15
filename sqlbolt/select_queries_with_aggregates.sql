-- https://sqlbolt.com/lesson/select_queries_with_aggregates

-- 1..................................................

SELECT MAX(years_employed) as Max_years_employed
FROM employees;

-- 2....................................................

SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY Role;

-- 3................................................

SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;