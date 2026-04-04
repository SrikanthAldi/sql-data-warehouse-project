/*
  ============================================================
   CREATE DATABASE AND SCHEMAS
  ============================================================
  Script purpose: 
                 This Script creates a new database named 'DataWarehouse' after checking if its already exists.
                 If the database exists, it is dropped and recreated. Additionally the script sets up three schemas within the database : 'bronze','silver'.'gold'.
                 
                 
 */

select datname
from pg_database
where datname = 'datawarehouse';

-- Crearting a DataWarehouse Database
create database datawarehouse;

-- Creating Schemas for different layers

create schema bronze;
create schema silver;
create schema gold;

-- Debug: ensure we are connected to correct database
--select current_database();
