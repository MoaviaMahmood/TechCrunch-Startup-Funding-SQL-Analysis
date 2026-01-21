-- Funding trend over time (yearly)
SELECT founded,
       SUM(raised) AS yearly_funding
FROM TechCrunch_data
GROUP BY founded
ORDER BY founded;

-- Number of startups funded per year
SELECT founded,
       COUNT(*) AS startups_funded
FROM TechCrunch_data
GROUP BY founded
ORDER BY startups_funded DESC;

-- Years with highest total funding
SELECT founded,
       SUM(raised) AS total_funding
FROM TechCrunch_data
GROUP BY founded
ORDER BY total_funding DESC;
