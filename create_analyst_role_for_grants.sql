-- 1. Create the target database (if not already created)
CREATE DATABASE IF NOT EXISTS ANALYTICS_PROD;

-- 2. Create the analyst role
CREATE ROLE IF NOT EXISTS ANALYST_ROLE;

-- 3. Grant warehouse usage to the role
GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE ANALYST_ROLE;

-- 4. Grant database usage to the role
GRANT USAGE ON DATABASE ANALYTICS_PROD TO ROLE ANALYST_ROLE;

-- 5. Grant schema usage (required for dbt models to be visible)
-- Grant usage on existing schemas:
GRANT USAGE ON ALL SCHEMAS IN DATABASE ANALYTICS_PROD TO ROLE ANALYST_ROLE;
-- Ensure future schemas created by dbt are also accessible:
GRANT USAGE ON FUTURE SCHEMAS IN DATABASE ANALYTICS_PROD TO ROLE ANALYST_ROLE;


-- 6. Explicitly REVOKE any table-level access (Ensures dbt MUST grant it)
REVOKE SELECT ON ALL TABLES IN DATABASE ANALYTICS_PROD FROM ROLE ANALYST_ROLE;
REVOKE SELECT ON FUTURE TABLES IN DATABASE ANALYTICS_PROD FROM ROLE ANALYST_ROLE;

-- 7. Grant the role to your user account to test/use it
-- Replace 'YOUR_SNOWFLAKE_USER' with your actual username
GRANT ROLE ANALYST_ROLE TO USER WILLIAMTSU;

-- 8. Tear down Roles: 
USE ROLE ACCOUNTADMIN;

-- 1. Drop the role completely (removes all grants, user assignments, and future grants)
DROP ROLE IF EXISTS ANALYST_ROLE;

-- 2. (Optional) Drop the database if you want to wipe the entire project environment
-- DROP DATABASE IF EXISTS ANALYTICS_PROD;