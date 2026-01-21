-- Create a new database named 'TechCrunch'
CREATE DATABASE TechCrunch;
GO

-- Switch the current context to the 'TechCrunch' database
-- All subsequent queries will run inside this database
USE TechCrunch;
GO

-- Check if the table 'TechCrunch_data' already exists in the database
-- 'U' stands for User-defined table
IF OBJECT_ID('TechCrunch_data', 'U') IS NOT NULL
    DROP TABLE TechCrunch_data;
GO

-- Create the TechCrunch_data table to store startup information
CREATE TABLE TechCrunch_data (
    name        NVARCHAR(50),        -- Name of the startup/company
    location    NVARCHAR(50),        -- Geographic location of the company
    category    NVARCHAR(50),        -- Industry or business category
    employees   NVARCHAR(50) NULL,   -- Number of employees (stored as text due to ranges like "11-50")
    raised      FLOAT NULL,          -- Total funding raised (in USD)
    valuation   FLOAT NULL,          -- Company valuation (in USD)
    founded     INT,                 -- Year the company was founded
    stage       NVARCHAR(50) NULL,   -- Startup stage (e.g., Seed, Series A)
    CEO         NVARCHAR(50) NULL,   -- Name of the CEO
    info        NVARCHAR(70)         -- Short description or additional information
);
GO

