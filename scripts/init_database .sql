/*
====================================================================================
Create Database and Schemas
====================================================================================
Script purpose;
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: bronze, silver and gold.

WARNING: 
      Running this script will drop the entire 'DataWarehouse' databes if it exists. 
      All data in the database will be permanently deleted. Proceed with caution and 
      ensure you have proper backups before running this script.
*/


** Ensure that you have proper backups before running this script
  -- Drop and recreate "DataWarehouse' database
  IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse'
  BEGIN
        ALTER DATABASE DataWarehouse SET SINGLR_USHER WITH ROLLBACK IMMEDIATE
        DROP DATABASE DataWarehouse
  END;

--CREATE DATABASE
USE master;
GO
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
CREATE SCHEMA bronze; 
GO -- GO is simply a separator
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
