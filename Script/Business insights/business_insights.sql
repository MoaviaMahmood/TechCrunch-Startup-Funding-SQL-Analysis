-- Capital-efficient industries
SELECT category,
       COUNT(*) AS startup_count,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY category
ORDER BY SUM(raised) / COUNT(*) DESC;

-- Locations with few startups but high funding
SELECT location,
       COUNT(*) AS startup_count,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY location
HAVING COUNT(*) < 50
ORDER BY total_funding DESC;

-- Funding distribution inequality (concentration)
SELECT location,
       MAX(raised) / SUM(raised) AS funding_concentration_ratio
FROM TechCrunch_data
GROUP BY location
ORDER BY funding_concentration_ratio DESC;
