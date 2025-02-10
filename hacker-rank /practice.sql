-- https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
SELECT *
FROM CITY
WHERE population > 100000
 AND CountryCode = 'USA';

----------------------------------------------

-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
SELECT NAME
FROM CITY
WHERE population > 120000
 AND CountryCode = 'USA';

----------------------------------------------

-- https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true
SELECT *
FROM CITY;

--------------------------------------------

-- https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
SELECT *
FROM CITY
WHERE ID = 1661;

------------------------------------------

-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-----------------------------------------

-- https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
SELECT name
FROM CITY
WHERE COUNTRYCODE = 'JPN';

----------------------------------------

-- https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
SELECT CITY, STATE
FROM STATION;

------------------------------------------

-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
SELECT DISTINCT CITY FROM Station
 WHERE ID % 2 = 0;
-------------------------------------------

-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
SELECT COUNT(CITY) - COUNT(DISTINCT City)
FROM STATION;

------------------------------------------

-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true




-------------------------------------------
