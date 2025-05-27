# Final Project: Digital User Churn Dashboard (Business Intelligence Analyst)

This project is the final project of the Project-Based Virtual Internship Program with a specialization in Business Analyst, conducted by Rakamin x Bank Muamalat, from May 5, 2025, to June 2, 2025. 

The final project focused on building a customer and sales analytics dashboard to provide actionable business insights using Google BigQuery and Looker Studio. The data used in it was provided by Rakamin x Bank Muamalat. There are five tasks that we should solve during this final project. 

## The Data
There are four tables which used.
1. Customers Table: https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/main/Customers.csv
2. Products table: https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/main/Products.csv
3. Orders table: https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/main/Orders.csv
4. Product category table: https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/main/ProductCategory.csv
   
## Task 
### Task 1
Determine the primary key of each table.
- Primary key of customer table: Customer ID
- Primary key of products table: Product Number
- Primary key of orders table: Order ID
- Primary key  of product category table: Category ID

Check the uniqueness of each primary key using query in BigQuery.
### Task 2
Examine the relationship among the four tables. The Relationship Diagram (ERD) of the tables could be shown in the picture below

![Image](https://github.com/user-attachments/assets/44662149-2dd2-4439-a238-96cd2fcc1d9f)
### Task 3
As BI Analyst PT Sejahtera Bersama, we want to create a master table including some information as follows :
- customer email (cust_email)
- customer city (cust_city)
- order date (order_date)
- order quantity (order_qty)
- product name (product_name)
- product price (product_price)
- product category name (category_name)
- total sales (total_sales)

The result could be viewed in this table https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/main/master%20table.csv
### Task 4
From the result of the table that we created from task 3, save the result in csv, and using looker studio create the data visualization which shows the sales data. The data visualization must contain a minimum:
- total sales
- total sales based the category product
- total quantity based the category product
- total sales based the city
- total quantity based the city
- top 5 category product with the highest sales
- top 5 category product with the highest quantity
#### Dashboard
The dashboard I created using Looker Data Studio is shown in the picture below
![Image](https://github.com/user-attachments/assets/f2f6090c-f3b4-4ecc-8d20-06981a9304ca)
#### Data Storytelling
From our database, there are some insights that we could take.
### Task 5
As BI Analyst of PT Sejahtera Bersama, what could we suggest to maintain or increase our sales with the detailed transaction table that is already available?
