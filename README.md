# Final Project: Sales Performance and Digital User Churn Dashboard (Business Intelligence Analyst)

This project is the final project of the Project-Based Virtual Internship Program with a role as Business Intelligence Analyst, conducted by Rakamin x Bank Muamalat, from May 5, 2025, to June 2, 2025. 

The final project focused on building a _Sales Performance and Digitals user Churn Dashboard_ to provide actionable business insights using Google BigQuery and Looker Studio. Rakamin x Bank Muamalat provided data on it. 

## Project Background and Overview
In this project, we suppose that PT Sejahtera Bersama is a company engaged in the digital and technology sector that sells products, such as robots, drones, eBooks, training videos, and others. 

The company had a significant amount of data on sales, products, orders, and customers. This project will thoroughly analyze and synthesize the data with the aim of finding insights that will increase the sales of the company.

Insights and recommendations are provided on the following key areas:
- **Customer Behavior**:
- **Sales Trend Analysis**: evaluation of historical sales patterns based on product categories and city, understanding the impact of customer behavior on sales
- **Product Performance**: an analysis of the company's various product lines, understanding the impact of order quantities and product prices on sales  
- **City Comparison**: an evaluation of sales and order quantities by city

The SQL queries used to inspect and clean the data for this analysis can be found here [link](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/784adb1cf0eaab6d85b31f78641e9d06d0bcd62c/BI%20Analyst%20Project%20Query.sql).

Custom SQL queries to Looker regarding customer key metrics can be found here [link](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/d6bfa95e4b2ba9c135d08ce29b2b1790f58be105/Custom%20Query%20on%20Looker.txt).

An interactive Looker dashboard used to report and explore sales trends and user churn can be found here [link]().

## Data Structure
The company's main database structure consists of four tables: customers, products, orders, and product categories. A description of each table is as follows:
- Customers: a total row count of 2123 records
- Products: a total row count of 70 records
- Orders: a total row count of 3339 records
- Product categories: a total row count of 7 records

The entity relationship diagram (ERD) shown below
![image alt](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/3024ace79d2bd0aecf468381cdbaf07029911d97/ERD.png)

Description from the Entity Relationship Diagram
- Customers.CustomerID → Orders.CustomerID (one-to-many)
- Products.ProductNumber → Orders.ProductNumber (one-to-many)
- ProductCategory.categoryID → Products.Category (one-to-many)

Note: One-To-Many → Each record in Table A can be associated with multiple records in Table B

After that, combine the four tables as a master table using a query. Here's the result [Master Table](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/40029726a4b9d022bc6a1a6ad8d10ebab8c31220/master%20table.csv) to create a dashboard.

## Executive Summary
After peaking in the third quarter of 2020, the company's sales continued to decline, with a significant drop in the fourth quarter of 2021. Key performance indicators affecting sales have all shown year-over-year decreases: total orders by 2.4%, total order quantities by 4.5%, total customers by 0.1%, and total new customers by 54.6%. The churn rate is 45.6% annually, indicating that a large number of customers are leaving, which normally needs to be below 20% to be considered low.  In this case, user churn itself also directly affects the company's sales. 

Below is the overview page from a Looker Dashboard 

![Image](https://github.com/user-attachments/assets/09d2bd2d-70c0-4aee-9fd3-849efc573529)

## Insight Deep Down

## Recommendations
