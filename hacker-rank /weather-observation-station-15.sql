-- https://www.hackerrank.com/challenges/weather-observation-station-15

SELECT ROUND(LONG_W, 4)
FROM Station
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;