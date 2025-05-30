# Final Project: Digital User Churn Dashboard (Business Intelligence Analyst)

This project is the final project of the Project-Based Virtual Internship Program with a specialization in Business Analyst, conducted by Rakamin x Bank Muamalat, from May 5, 2025, to June 2, 2025. 

The final project focused on building a customer and sales analytics dashboard to provide actionable business insights using Google BigQuery and Looker Studio. The data used in it was provided by Rakamin x Bank Muamalat. 

## The Data
There are four tables which used, such as customer, product, order, product category tables.
   
## Case Study
There are five tasks that we should solve during this final project.
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
- total sales based on the category of product
- total quantity based on the category of product
- total sales based on the city
- total quantity based on the city
- top 5 category product with the highest sales
- top 5 category product with the highest quantity
#### Dashboard
The dashboard I created using Looker Data Studio is shown in the picture below
![Image](https://github.com/user-attachments/assets/62aba329-e44c-4f88-81c8-7b75cd45aab0)
Custom query which used to create customer summary metric
```sql
-- Define date ranges
WITH date_ranges AS (
  SELECT
    DATE '2020-01-01' AS previous_start,
    DATE_SUB(PARSE_DATE('%Y%m%d', @DS_START_DATE), INTERVAL 1 DAY) AS previous_end,
    PARSE_DATE('%Y%m%d', @DS_START_DATE) AS current_start,
    PARSE_DATE('%Y%m%d', @DS_END_DATE) AS current_end
),

-- Get customers in the previous period
previous_customers AS (
  SELECT DISTINCT cust_email
  FROM molten-gantry-460814-v0.BIAnalyst.master_table
  WHERE order_date BETWEEN (SELECT previous_start FROM date_ranges)
                       AND (SELECT previous_end FROM date_ranges)
  AND category_name IN UNNEST(@category_name)
),

-- Get customers in the current period
current_customers AS (
  SELECT DISTINCT cust_email
  FROM molten-gantry-460814-v0.BIAnalyst.master_table
  WHERE order_date BETWEEN (SELECT current_start FROM date_ranges)
                       AND (SELECT current_end FROM date_ranges)
  AND category_name IN UNNEST(@category_name)
),

-- Find new customers (only in current)
new_customers AS (
  SELECT cust_email
  FROM current_customers
  WHERE cust_email NOT IN (SELECT cust_email FROM previous_customers)
),

-- Find the customers who are in both period 
customers_inboth AS (
  SELECT cust_email
  FROM current_customers
  WHERE cust_email IN (SELECT cust_email FROM previous_customers)
),
  
-- Find the customer who are in current period but order more one 
customers_ordermoreone AS (
  SELECT cust_email
  FROM molten-gantry-460814-v0.BIAnalyst.master_table
  WHERE order_date BETWEEN (SELECT current_start FROM date_ranges)
                       AND (SELECT current_end FROM date_ranges)
  AND category_name IN UNNEST(@category_name)
  GROUP BY cust_email
  HAVING COUNT(*) > 1
),

-- Find repated customers
repeated_customers AS (
  SELECT COUNT(*) AS total_repeated_customers
  FROM customers_inboth
  UNION ALL
  SELECT COUNT(*) AS total_repeated_customers
  FROM customers_ordermoreone
),

-- Find churned customers (only in previous)
churned_customers AS (
  SELECT cust_email
  FROM previous_customers
  WHERE cust_email NOT IN (SELECT cust_email FROM current_customers)
)

-- Final summary
SELECT
	(SELECT COUNT(*) FROM current_customers) AS current_customers,
	(SELECT COUNT(*) FROM previous_customers) AS previous_customers,
	(SELECT COUNT(*) FROM new_customers) AS new_customers,
	(SELECT SUM(total_repeated_customers) FROM repeated_customers) AS repeated_customers,
	(SELECT COUNT(*) FROM churned_customers) AS churned_customers,
	IFNULL((ROUND(SAFE_DIVIDE((SELECT COUNT(*) FROM churned_customers), (SELECT COUNT(*) FROM previous_customers)) * 100, 2)),0) AS churn_rate;
```
#### Data Storytelling
From our database, there are some insights that we could take.
### Task 5
As BI Analyst of PT Sejahtera Bersama, what could we suggest to maintain or increase our sales with the detailed transaction table that is already available?
