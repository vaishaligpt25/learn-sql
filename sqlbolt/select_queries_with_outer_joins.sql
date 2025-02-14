-- https://sqlbolt.com/lesson/select_queries_with_outer_joins

-- 1................................................

SELECT Building
FROM Employees;

-- 2..................................................

SELECT * FROM buildings;

-- 3.................................................

SELECT DISTINCT building_name, role
FROM buildings
  LEFT JOIN employees
    ON building_name = building;