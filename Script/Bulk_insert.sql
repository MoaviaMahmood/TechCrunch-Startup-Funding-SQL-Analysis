-- Print message to confirm table truncation step
PRINT '-> Truncate Table: TechCrunch_data';

-- Remove all existing records from the table (faster than DELETE)
TRUNCATE TABLE TechCrunch_data;
GO

-- Print message to confirm bulk loading step
PRINT '-> Bulk Load: TechCrunch_data';

-- Load data from CSV file into the TechCrunch_data table
BULK INSERT TechCrunch_data
FROM 'C:\Users\HP Laptop 15\Documents\sql projects\p4\TechCrunch.csv' --change this location according to your local stored location
WITH (
    FIRSTROW = 2,        -- Skip header row in CSV file
    FIELDTERMINATOR = ',', -- Define comma as column separator
    TABLOCK              -- Improve performance by locking the table during load
);
