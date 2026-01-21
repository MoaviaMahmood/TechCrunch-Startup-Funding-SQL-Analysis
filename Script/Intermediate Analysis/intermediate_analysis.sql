-- Funding by category (total funding)
SELECT category,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY category
ORDER BY total_funding DESC;

-- Average funding per category
SELECT category,
       ROUND(AVG(raised),0) AS avg_funding
FROM TechCrunch_data
GROUP BY category
ORDER BY avg_funding DESC;

-- locations with the highest number of startups
SELECT location,
       COUNT(*) AS startup_count
FROM TechCrunch_data
GROUP BY location
ORDER BY startup_count DESC;

-- Locations with more than $1B total funding
SELECT location,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY location
HAVING SUM(raised) > 1000000000
ORDER BY total_funding DESC;

-- Most common funding rounds
SELECT stage,
       COUNT(*) AS round_count
FROM TechCrunch_data
GROUP BY stage
ORDER BY round_count DESC;
