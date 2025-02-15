-- https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2

-- 1....................................................

SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

-- 2...................................................

SELECT ROLE, COUNT(*) AS employee
FROM Employees
GROUP BY ROLE;

-- 3..................................................
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";