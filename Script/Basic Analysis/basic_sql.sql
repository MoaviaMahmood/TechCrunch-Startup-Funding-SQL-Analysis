--How many startups are in the dataset?
SELECT COUNT(*) AS total_startups
FROM TechCrunch_data;

-- How many unique startup categories exist?
SELECT COUNT(DISTINCT category) AS total_categories
FROM TechCrunch_data;

--Total funding raised by all startups
SELECT SUM(raised) AS total_funding_usd
FROM TechCrunch_data;

-- Average funding per startup
SELECT ROUND(AVG(raised),2) AS avg_funding_usd
FROM TechCrunch_data;

-- Top 10 most funded startups
SELECT TOP 10 name, raised
FROM TechCrunch_data
ORDER BY raised DESC;
