/*
============================================================
INIT DATABASE
============================================================
Script purpose:
This script is used to initialize the PostgreSQL data warehouse
environment in DBeaver.

It first checks whether a database named 'datawarehouse' already
exists in the PostgreSQL server.

If the database does not exist, it can be created separately.
Schema creation should be executed only after connecting to the
'datawarehouse' database.

Environment:
- Database Engine : PostgreSQL
- SQL Client      : DBeaver

Notes:
- PostgreSQL does not support the SQL Server command USE.
- CREATE DATABASE must be run separately and not inside a
  transaction block.
- Schemas such as bronze, silver, and gold should be created
  only after connecting to the target database.
============================================================
*/

-- Check whether the target database already exists
SELECT datname
FROM pg_database
WHERE datname = 'datawarehouse';

-- Create the data warehouse database
CREATE DATABASE datawarehouse;

-- Debug: verify the currently connected database
-- SELECT current_database();
