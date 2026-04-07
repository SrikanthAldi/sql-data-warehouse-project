/*

---------------------------------------------------------------------------------
Data validation and Quality check
---------------------------------------------------------------------------------
 */

SELECT COUNT(*) FROM bronze.crm_cust_info;
SELECT COUNT(*) FROM bronze.crm_prd_info;
SELECT COUNT(*) FROM bronze.crm_sales_details;

SELECT COUNT(*) FROM bronze.erp_cust_az12;
SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;
SELECT COUNT(*) FROM bronze.erp_sales_details;
