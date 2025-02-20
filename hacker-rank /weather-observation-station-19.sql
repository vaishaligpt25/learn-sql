-- https://www.hackerrank.com/challenges/weather-observation-station-19

SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ),
    4)
FROM STATION;


-----------------------2nd method-----------------------

SELECT ROUND(
    SQRT(
        POWER((SELECT MAX(LAT_N) FROM STATION) - (SELECT MIN(LAT_N) FROM STATION), 2) +
        POWER((SELECT MAX(LONG_W) FROM STATION) - (SELECT MIN(LONG_W) FROM STATION), 2)
    ),
    4)
FROM STATION
LIMIT 1;

--------------------3rd method--------------------

SELECT ROUND(
    SQRT(
        POW(MAX(LAT_N) - MIN(LAT_N), 2) +
        POW(MAX(LONG_W) - MIN(LONG_W), 2)
    ),
    4)
FROM STATION;
