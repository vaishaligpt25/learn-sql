-- https://sqlbolt.com/lesson/select_queries_review

-- 1.....................................................

SELECT city, population
FROM north_american_cities
WHERE country = "Canada";

-- 2....................................................

SELECT city, latitude
FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;