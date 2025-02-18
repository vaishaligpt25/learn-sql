-- https://www.hackerrank.com/challenges/more-than-75-marks


SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;