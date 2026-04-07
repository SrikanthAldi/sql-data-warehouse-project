/*
============================================================
BRONZE FULL LOAD (DBeaver Import Controlled)
============================================================
*/


CREATE OR REPLACE PROCEDURE bronze.sp_full_load_reset()
LANGUAGE plpgsql
AS $$
BEGIN

TRUNCATE TABLE bronze.crm_cust_info;
TRUNCATE TABLE bronze.crm_prd_info;
TRUNCATE TABLE bronze.crm_sales_details;

TRUNCATE TABLE bronze.erp_cust_az12;
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
TRUNCATE TABLE bronze.erp_sales_details;

END;
$$;
