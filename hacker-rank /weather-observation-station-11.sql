-- https://www.hackerrank.com/challenges/weather-observation-station-11

SELECT DISTINCT
    city
FROM
    Station
WHERE
    (city NOT LIKE 'A%' AND city NOT LIKE 'E%' AND city NOT LIKE 'I%' AND city NOT LIKE 'O%' AND city NOT LIKE 'U%')
OR
    (City NOT LIKE '%a' AND city NOT LIKE '%e' AND city NOT LIKE '%i' AND city NOT LIKE '%o' AND city NOT LIKE '%u');