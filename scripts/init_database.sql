--it check if there is already database datawarehouse it drop it and recreate it again 
-- so please make sure before running these code or there would be problem in the databse.
--warning
if exists (select 1 from sys.databases where name ='DataWarehouse')
begin
alter database DataWarehouse set single_user with rollback immediate;
drop database DataWarehouse;
end;
go
--creating database datawarehouse
create database DataWarehouse;

use DataWarehouse;

--creating schemas
create schema bronze;
go
create schema silver;
go
create schema gold;
go
