/*
============================================================
BRONZE TABLES
============================================================
Purpose:
This script creates the raw customer ingestion table in the
bronze schema for PostgreSQL.
============================================================
*/


/*
 -----------------------------------------------------------
 ->SOURCE SYSTEM 1: source_crm
 -----------------------------------------------------------
 */




CREATE TABLE IF NOT EXISTS bronze.cust_info (
    cst_id INT,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(100),
    cst_lastname VARCHAR(100),
    cst_marital_status VARCHAR(10),
    cst_gndr VARCHAR(10),
    cst_create_date DATE
);



CREATE TABLE IF NOT EXISTS bronze.prd_info (
    prd_id INT,
    prd_key VARCHAR(50),
    prd_name VARCHAR(100),
    prd_cost INT,
    prd_line VARCHAR(10),
    prd_start_dt DATE,
    prd_end_dt DATE
);




DROP TABLE bronze.crm_sales_details;

CREATE TABLE bronze.crm_sales_details (
    sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id VARCHAR(100),
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

/*
 -----------------------------------------------------------
 ->SOURCE SYSTEM 2: source_erp
 -----------------------------------------------------------
 */


CREATE TABLE bronze.cust_az12 (
    cid VARCHAR(50),
    bdate DATE,
    gen VARCHAR(50)
);




CREATE TABLE IF NOT EXISTS bronze.px_cat_g1v2(
    id VARCHAR(50),
    cat VARCHAR(50),
    subcat VARCHAR(100),
    maintenance VARCHAR(50)
);



CREATE TABLE IF NOT EXISTS bronze.sales_details_src2 (
    cid VARCHAR(100),
    country VARCHAR(100)
  );


   
