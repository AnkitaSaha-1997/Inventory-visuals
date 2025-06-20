create database prod_env;
USE prod_env;

SELECT * FROM prod_env.`prod env inventory dataset`;
SELECT * FROM `products`;

UPDATE `prod env inventory dataset`
SET `PRODUCT ID` = 7
WHERE `PRODUCT ID` = 21;

UPDATE `prod env inventory dataset`
SET `PRODUCT ID` = 11
WHERE `PRODUCT ID` = 22;

use prod_env;

create table new_table as
select 
a. `Order Date (DD/MM/YYYY)` as `[Order_Date_DD_MM_YYYY]`,
a.`PRODUCT ID` as `[Product_ID]`,
a.Availability, 
a.Demand, 
b.`Product Name` as `[Product_Name]`, 
b.`Unit Price ($)` as `[Unit_Price]`

from `prod env inventory dataset` as a
left join prod_env.products as b
on a.`PRODUCT ID`=b.`PRODUCT ID`

SELECT COUNT(*) FROM `prod env inventory dataset`
SELECT * FROM `new_table`