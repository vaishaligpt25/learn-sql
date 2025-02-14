-- https://sqlbolt.com/lesson/select_queries_with_nulls

-- 1...............................................

SELECT name, role
FROM employees
WHERE building IS NULL;

-- 2...............................................

SELECT DISTINCT building_name
FROM buildings
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;