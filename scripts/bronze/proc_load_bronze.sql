create or alter procedure bronze.proload_bronze
as 
begin
truncate table bronze.crm_cust_info
bulk insert bronze.crm_cust_info
from 'C:\Users\Ashish Pandey\Downloads\sqldatawarehouse_prj\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (firstrow= 2,
fieldterminator =',',
tablock

);
--select count(*) from  bronze.crm_prd_info


--crm table2
truncate table bronze.crm_prd_info
bulk insert bronze.crm_prd_info
from 'C:\Users\Ashish Pandey\Downloads\sqldatawarehouse_prj\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (firstrow= 2,
fieldterminator =',',
tablock

);
--crm table3
truncate table bronze.crm_sales_details
bulk insert bronze.crm_sales_details
from 'C:\Users\Ashish Pandey\Downloads\sqldatawarehouse_prj\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (firstrow= 2,
fieldterminator =',',
tablock

);


--erp table 1
truncate table bronze.erp_loc_a101
bulk insert bronze.erp_loc_a101
from 'C:\Users\Ashish Pandey\Downloads\sqldatawarehouse_prj\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
with (firstrow= 2,
fieldterminator =',',
tablock

);

--erp table 2
truncate table bronze.erp_cust_az12
bulk insert bronze.erp_cust_az12
from 'C:\Users\Ashish Pandey\Downloads\sqldatawarehouse_prj\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with (firstrow= 2,
fieldterminator =',',
tablock

);

--erp table 3
truncate table bronze.erp_px_cat_g1v2
bulk insert bronze.erp_px_cat_g1v2
from 'C:\Users\Ashish Pandey\Downloads\sqldatawarehouse_prj\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
with (firstrow= 2,
fieldterminator =',',
tablock

);
end

