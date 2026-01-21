# TechCrunch Startup Funding – SQL Analysis

## Project Overview

This project performs an exploratory and analytical **SQL-based analysis** on **TechCrunch startup funding data** to uncover investment trends, industry performance, geographic insights, and funding patterns.

The goal of this project is to demonstrate **real-world SQL skills**, **analytical thinking**, and **business insight generation** using a realistic startup dataset.

---

## Key Objectives

- Analyze global startup funding trends  
- Identify top-funded industries and regions  
- Understand funding behavior across startup stages  
- Apply advanced SQL techniques for insights  
- Build a **portfolio-ready SQL project**

---

## Dataset Description

The dataset contains information about startups featured on TechCrunch.

| Column | Description |
|------|------------|
| `name` | Startup name |
| `location` | Location of operation |
| `category` | Industry / sector |
| `employees` | Number of employees |
| `raised` | Total funding received (USD) |
| `valuation` | Valuation of Company (USD) |
| `founded` | Year the startup was founded |
| `stage` | Funding stage (Seed, Series A, etc.) |
| `CEO` | CEO of company |
| `info` | Brief information about company |

---

## Tools & Technologies

- **SQL** (MySQL / PostgreSQL / SQLite compatible)  
- **CSV dataset**  
- Visualization using **Python / BI tools**

---

## Key Business Questions Answered

### Startup Ecosystem Overview
- How many startups are included in the dataset?
- How many unique industries exist?
- What is the total funding raised?

**Insight:**  
The dataset provides a broad overview of the global startup ecosystem, enabling comparison across industries and regions.

---

### Funding Analysis
- Which startups received the highest funding?
- What is the average funding per startup?
- Which industries attract the most capital?

**Insight:**  
Funding is heavily concentrated in a few industries, indicating strong investor preference for scalable and high-growth sectors.

---

### Industry-Level Insights
- Total and average funding per category  
- Capital efficiency (funding per startup)

**Insight:**  
Some industries have fewer startups but higher average funding, suggesting capital-intensive or mature business models.

---

### Geographic Trends
- Locations with the highest number of startups  
- Locations with the highest total funding  
- Locations with high funding concentration  

**Insight:**  
A small number of countries dominate total funding, while some regions show high funding concentration among fewer startups.

---

### Time-Based Trends
- Funding growth over time  
- Year with the highest investment  
- Startup activity trends by year  

**Insight:**  
Startup funding shows cyclical behavior, with clear peak investment years driven by market and technological trends.

---

### Advanced Analysis (Window Functions)
- Ranking startups within industries  
- Top 3 startups per category  
- Cumulative funding over time  

**Insight:**  
Window functions reveal industry leaders and show how funding accumulates over long periods.

---

## Insights Generated

- Certain industries receive disproportionately high funding  
- Funding is not evenly distributed across startups  
- Emerging markets may have fewer startups but strong investment value  
- Later-stage funding rounds receive significantly larger investments  

---

## 📁 Project Structure

TechCrunch-SQL-Analysis/
│
├── data/
│ └── techcrunch.csv
│
├── script/
│ ├── basic_analysis.sql
│ ├── funding_analysis.sql
│ ├── time_series.sql
│ └── advanced_queries.sql
│
├── insights/
│ └── key_findings.md
│
└── README.md

## 💼 Portfolio Value

This project demonstrates:

- Real-world data analysis using SQL  
- Business-focused questioning  
- Data-driven insight generation  
- Readiness for **Data Analyst / Data Engineer roles**

---
