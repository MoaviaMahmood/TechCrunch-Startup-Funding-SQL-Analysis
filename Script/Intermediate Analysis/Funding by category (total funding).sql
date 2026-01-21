SELECT category,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY category
ORDER BY total_funding DESC;
