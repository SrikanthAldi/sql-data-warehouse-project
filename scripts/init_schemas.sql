/*
============================================================
CREATE SCHEMAS
============================================================
Script purpose:
This script creates the schema layers for the PostgreSQL
data warehouse after connecting to the 'datawarehouse'
database in DBeaver.

Schema layers:
- bronze : raw ingested data
- silver : cleaned and transformed data
- gold   : analytics-ready business data

Environment:
- Database Engine : PostgreSQL
- SQL Client      : DBeaver
============================================================
*/

-- Debug: verify the current database before schema creation
-- SELECT current_database();

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
