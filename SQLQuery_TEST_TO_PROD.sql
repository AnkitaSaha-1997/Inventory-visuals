----------------TEST ENVIRONMENT------------------

create database test_env

use test_env

select * from [dbo].[Products]
select * from [dbo].[Test Environment Inventory Dataset]

select distinct product_id
from [dbo].[Test Environment Inventory Dataset]
select distinct product_id
from [dbo].[Products]

select 
a.[Order_Date_DD_MM_YYYY],
a.[Product_ID],
a.[Availability], 
a.[Demand], 
b.[Product_Name], 
b.[Unit_Price] 

from [dbo].[Test Environment Inventory Dataset] as a

left join [dbo].[Products] as b
on a.product_id=b.product_id


select * into new_table from 
(select 
a.[Order_Date_DD_MM_YYYY],
a.[Product_ID],a.[Availability], 
a.[Demand], 
b.[Product_Name], 
b.[Unit_Price] 

from [dbo].[Test Environment Inventory Dataset] as a

left join [dbo].[Products] as b
on a.product_id=b.product_id) x

select * from new_table
select distinct (product_name) from new_table


----------------PRODUCTION ENVIRONMENT------------------


create database prod_env

use prod_env

select * from [dbo].[Prod Env Inventory DatasetNew]
select * from [dbo].[Products]

select count(*) from [dbo].[Prod Env Inventory DatasetNew]

select Order_Date_DD_MM_YYYY, product_id, availability, demand 
from [dbo].[Prod Env Inventory DatasetNew]
where Order_Date_DD_MM_YYYY is null and Order_Date_DD_MM_YYYY = ' '
AND product_id is null and product_id = ' '
AND availability is  null and availability = ' '
AND demand is null and demand = ' ';

select DISTINCT PRODUCT_ID
from [dbo].[Prod Env Inventory DatasetNew] ORDER BY PRODUCT_ID

UPDATE [dbo].[Prod Env Inventory DatasetNEW]
SET PRODUCT_ID = 7
WHERE PRODUCT_ID = 21

UPDATE [dbo].[Prod Env Inventory DatasetNEW]
SET PRODUCT_ID = 11
WHERE PRODUCT_ID = 22

select DISTINCT PRODUCT_ID
from [dbo].[Prod Env Inventory DatasetNew] ORDER BY PRODUCT_ID

select 
a.[Order_Date_DD_MM_YYYY],
a.[Product_ID],
a.[Availability], 
a.[Demand], 
b.[Product_Name], 
b.[Unit_Price] 

from [dbo].[Prod Env Inventory DatasetNEW] as a

left join [dbo].[Products] as b
ON a.product_id=b.product_id


select * into new_table from 
(select 
a.[Order_Date_DD_MM_YYYY],
a.[Product_ID],
a.[Availability], 
a.[Demand], 
b.[Product_Name], 
b.[Unit_Price] 

from [dbo].[Prod Env Inventory DatasetNEW] as a

left join [dbo].[Products] as b
ON a.product_id=b.product_id) x

select * FROM new_table


