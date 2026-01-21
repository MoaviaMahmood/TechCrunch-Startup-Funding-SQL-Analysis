-- Locations with more than $1B total funding
SELECT location,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY location
HAVING SUM(raised) > 1000000000
ORDER BY total_funding DESC;
