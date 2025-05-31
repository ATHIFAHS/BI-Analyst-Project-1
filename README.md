# Final Project: Sales Performance and Digital User Churn Dashboard (Business Intelligence Analyst)

This project is the final project of the Project-Based Virtual Internship Program with a role as Business Intelligence Analyst, conducted by Rakamin x Bank Muamalat, from May 5, 2025, to June 2, 2025. 

The final project focused on building a _Sales Performance and Digital User Churn Dashboard_ to provide actionable business insights using Google BigQuery and Looker Studio. Rakamin x Bank Muamalat provided data on it. 

## Project Background and Overview
In this project, we suppose that PT Sejahtera Bersama is a company engaged in the digital and technology sector that sells products, such as robots, drones, eBooks, training videos, and others. 

The company had a significant amount of data on sales, products, orders, and customers. This project will thoroughly analyze and synthesize the data with the aim of finding insights that will increase the sales of the company.

Insights and recommendations are provided on the following key areas:
- **Consumer Behavior**: evaluation of changes in the number of customers annually and quarterly, and churn rate to grasp the number of customers leaving the company's products, understanding of consumer behavior in buying company-provided products
- **Sales Trend Analysis**: evaluation of historical sales patterns, understanding the impact of customer behavior on sales
- **Product Performance**: an analysis of the company's various product lines, understanding the impact of order quantities and product prices on sales  
- **City Comparison**: an evaluation of sales and order quantities by city

The SQL queries used to inspect and clean the data for this analysis can be found here [link](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/784adb1cf0eaab6d85b31f78641e9d06d0bcd62c/BI%20Analyst%20Project%20Query.sql).

Custom SQL queries to Looker regarding customer key metrics can be found here [link](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/d6bfa95e4b2ba9c135d08ce29b2b1790f58be105/Custom%20Query%20on%20Looker.txt).

An interactive Looker dashboard used to report and explore sales trends and user churn can be found here [link](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/97dfa8954f142bfbba062c7e86674e2ec9e834ef/Sales%20Performance%20and%20Digitals%20User%20Churn%20Dashboard.pdf).

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
### Consumer Behavior 
- **Changes annually**: Total customers declined by 0.1% between 2020 and 2021, but recurring customers climbed by 149%. Despite an increase in recurring clients, the churn rate remained high at 45.6%. In this situation, the company is having difficulty maintaining existing clients and acquiring new ones.
- **Changes quarterly**: The churn rate increased quarterly and consistently exceeded 80% in Q4 of 2020 and 2021, indicating a critical issue with customer retention. Despite the high turnover rate, the company managed to show a significant increase in repeat customers each quarter, with a record high of 291 repeat customers in Q4 2021. In contrast, there is a consistent decline in new customer numbers from Q1 to Q4 in both years. There is a clear quarterly trend where Q3 of 2020 had the highest total customers, while Q2 of 2021 similarly had high numbers.

### Sales Trends Analysis
- **Annual pattern**: In 2021, a 0.1% decline in total customers and a 54.6% decrease in new customers, along with a high churn rate, resulted in a 2.4% and 4.5% decrease in total orders and order quantity, respectively. As a result, revenues decreased by 7.5%, showing that the corporation faces difficulty in expanding annual sales. 
- **Quarter pattern**: Peak sales occurred in Q3 2020 at approximately $250,000, marking a strong mid-year performance. After peaking in the third quarter of 2020, the company's sales continued to decline, with a significant drop in the fourth quarter of 2021, falling below $200,000. Whereas, the peak for 2021 was in Q2 2021 at approximately $240,000, which is similar to Q3 2020 but reflected a decrease in overall customer retention. Sales experienced a decline in Q4 of both years, indicating challenges in maintaining momentum as the year concluded.

![Screenshot 2025-05-31 204548](https://github.com/user-attachments/assets/b2cfc954-9aa0-4365-ae98-11912c9f2cb3)

### Product Performance
- **Order quantities**: 44.6% of the company's orders came from eBooks and training videos, indicating high consumer interest in digital content. It was characterized by an increase in orders for eBooks from 2020 to 2021, along with a decrease in orders for other products. 
- **Total sales**: 70% of the company's sales come from robots and drones, indicating a growing interest in aerial technology. This is inversely proportional to the number of orders, as eBooks are low-priced products.
- The analysis indicates a clear hierarchy in sales and order quantities among various product categories, with Robots leading in total sales and eBooks topping in order quantity. 

![Screenshot 2025-05-31 221834](https://github.com/user-attachments/assets/0ed1f422-d51f-4764-ab48-fe3ebcaf3691) 

### City Comparison
- Washington is the city that has the highest sales among other cities from 2020 to 2021.
- In 2021, Washington became the city with the highest number of orders, but then in 2021 it ranked second; first place was Houston, with a slight difference.
- Sales distribution is centered in North America, followed by Europe.

![image](https://github.com/user-attachments/assets/48eee747-90c3-4a7f-b6e0-31e61f407361)

## Recommendations
Based on the insights and findings above, we would recommend marketing team consider the following:
