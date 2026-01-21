-- Average funding per category
SELECT category,
       ROUND(AVG(raised),0) AS avg_funding
FROM TechCrunch_data
GROUP BY category
ORDER BY avg_funding DESC;
