-- 1. Create Login (SQL Server uses LOGIN, not USER directly)
CREATE LOGIN data_analyst WITH PASSWORD = 'Analyst@123';

-- 2. Create User inside TRACKER database
USE TRACKER;
CREATE USER data_analyst FOR LOGIN data_analyst;

-- 3. Grant SELECT on all tables
GRANT SELECT TO data_analyst;

-- 4. Grant INSERT only on FLIGHT table
GRANT INSERT ON FLIGHT TO data_analyst;

-- 5. Revoke INSERT privilege
REVOKE INSERT ON FLIGHT FROM data_analyst;