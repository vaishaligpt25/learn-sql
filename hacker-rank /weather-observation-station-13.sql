-- https://www.hackerrank.com/challenges/weather-observation-station-13

SELECT TRUNCATE(SUM(LAT_N), 4)
FROM Station
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;