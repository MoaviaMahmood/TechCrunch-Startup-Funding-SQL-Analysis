-- locations with the highest number of startups
SELECT location,
       COUNT(*) AS startup_count
FROM TechCrunch_data
GROUP BY location
ORDER BY startup_count DESC;
