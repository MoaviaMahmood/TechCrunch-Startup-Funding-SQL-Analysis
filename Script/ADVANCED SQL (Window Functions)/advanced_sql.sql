-- Rank startups by funding within each category
SELECT name,
       category,
       raised,
       RANK() OVER (PARTITION BY category ORDER BY raised DESC) AS category_rank
FROM TechCrunch_data
WHERE category IS NOT NULL AND raised IS NOT NULL;

-- Top 3 funded startups per category
SELECT *
FROM (
    SELECT name,
           category,
           raised,
           RANK() OVER (PARTITION BY category ORDER BY raised DESC) AS rnk
    FROM TechCrunch_data
) ranked
WHERE rnk <= 3 AND category IS NOT NULL AND raised IS NOT NULL;

-- Startups funded above category average
SELECT t.name,
       t.category,
       t.raised
FROM TechCrunch_data t
JOIN (
    SELECT category,
           AVG(raised) AS avg_funding
    FROM TechCrunch_data
    GROUP BY category
) c
ON t.category = c.category
WHERE t.raised > c.avg_funding
ORDER BY raised DESC;

-- Cumulative funding over time
SELECT founded,
       SUM(raised) AS yearly_funding,
       SUM(SUM(raised)) OVER (ORDER BY founded) AS cumulative_funding
FROM TechCrunch_data
GROUP BY founded
ORDER BY founded;
