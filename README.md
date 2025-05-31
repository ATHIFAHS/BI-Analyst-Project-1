# Final Project: Sales Performance and Digital User Churn Dashboard (Business Intelligence Analyst)

This project is the final project of the Project-Based Virtual Internship Program with a specialization in Business Analyst, conducted by Rakamin x Bank Muamalat, from May 5, 2025, to June 2, 2025. 

The final project focused on building a customer and sales analytics dashboard to provide actionable business insights using Google BigQuery and Looker Studio. Rakamin x Bank Muamalat provided data on it. 

## Project Background and Overview
In this project, we suppose that PT Sejahtera Bersama is a company engaged in the digital and technology sector that sells products, such as robots, drones, eBooks, training videos, and others. 

The company had a large amount of data on sales, products, orders, and customers. This project will thoroughly analyze and synthesize the data with the aim of finding insights that will increase the sales of the company.

Insights and recommendations are provided on the following key areas:
- **Sales Trend Analysis**: evaluation of historical sales patterns based on product categories and city, understanding the impact of customer behavior on sales
- **Product Performance**: an analysis of the company's various product lines, understanding the impact of order quantities and product prices on sales  
- **City Comparison**: an evaluation of sales and order quantities by city

## Data Structure
The company's main database structure consists of four tables: customers, products, orders, and product categories. A description of each table is as follows:
- Customers: a total row count of 2123 records

  ![Image](https://github.com/user-attachments/assets/b6ae7edf-b432-4068-8cc4-5db3f040ea1a)
- Products: a total row count of 70 records

  ![Image](https://github.com/user-attachments/assets/d6f9f813-7705-4f86-9854-f9a2b92a26ac)
- Orders: a total row count of 3339 records

  ![Image](https://github.com/user-attachments/assets/aef68248-ba82-468b-ac0d-9609090acdcc)
- Product categories: a total row count of 7 records

  ![Image](https://github.com/user-attachments/assets/2289f0a4-df4e-42e7-afd1-8eedae293cdb)

The entity relationship diagram (ERD) shown below
![Image](https://github.com/user-attachments/assets/2955899e-02d3-49cf-82de-5fdb53f0bc2b)

Description from the Entity Relationship Diagram beside
- Customers.CustomerID → Orders.CustomerID (one-to-many)
- Products.ProductNumber → Orders.ProductNumber (one-to-many)
- ProductCategory.categoryID → Products.Category (one-to-many)
Note: One-To-Many → Each record in Table A can be associated with multiple records in Table B

## Executive Summary

## Insight Deep Down
