# Inventory-visuals
# Inventory-visuals 
# 📦 Inventory Demand vs Availability Dashboard

This project demonstrates how to analyze the relationship between **product demand** and **inventory availability** using Power BI, SQL Server, and MySQL. It showcases both **test-to-production** migration and **cross-database compatibility** without rebuilding the visualizations.

## 🛠 Tools Used
- Microsoft SQL Server (Test & Production Environments)
- MySQL Server
- Power BI Desktop
- GitHub (for version tracking)

## 📊 Project Overview

1. **Load test data into SQL Server**  
   - Simulated a test environment using a sample inventory dataset.
   - Built the data model and dashboard in Power BI.

2. **Switch to Production Environment**  
   - Updated the source in SSMS to production data.
   - Switched Power BI data source without recreating visuals.

3. **Change from SQL Server to MySQL**  
   - Migrated the same schema/data to MySQL.
   - Reconnected Power BI to MySQL without breaking existing visuals.

## 🎯 Key Outcomes
- Seamless environment change (Test → Production)
- Cross-platform data source shift (SQL Server → MySQL)
- No need to rebuild Power BI visuals during transitions
- Visual insight into gaps and trends between inventory & demand

## 📷 Dashboard Preview
*Below is a screenshot of the Power BI dashboard created as part of this project.*

![Dashboard Screenshot](dashboard1.png) <!-- Replace with actual screenshot file name -->

## 📁 Files Included
- `InventoryDashboard.pbix` – Power BI dashboard file
- `test_data_script.sql` – SQL script for test environment
- `prod_data_script.sql` – SQL script for production
- `mysql_schema.sql` – MySQL version of the data structure
- `README.md` – Project documentation

## 🔗 Shared on LinkedIn
This project is also shared on my LinkedIn as a post (not an article) for better visibility and engagement.

👉 [View the LinkedIn Post] (https://www.linkedin.com/posts/ankita-saha97_powerbi-sqlserver-mysql-activity-7341819704170201089-v1JL?utm_source=share&utm_medium=member_desktop&rcm=ACoAADBXjnwBj64cRABKzFxt-KXRPkTR3tcRkck)

---

### 📬 Let's Connect!
Feel free to connect with me on [LinkedIn] (www.linkedin.com/in/ankita-saha97) to discuss Power BI, SQL, or data projects.

