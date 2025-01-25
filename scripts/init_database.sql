/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'data_warehouse' after checking if it already exists. 
    Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'data_warehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- DROP DATABASE IF EXISTS data_warehouse;
-- Create database
CREATE DATABASE data_warehouse
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Create schemas for the db
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
