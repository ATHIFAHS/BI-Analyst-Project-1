# Final Project: Sales Performance and Digital User Churn Dashboard (Business Intelligence Analyst)

This project is the final project of the Project-Based Virtual Internship Program with a role as Business Intelligence Analyst, conducted by Rakamin x Bank Muamalat, from May 5, 2025, to June 2, 2025. 

The final project focused on building a _Sales Performance and Digital User Churn Dashboard_ to provide actionable business insights using Google BigQuery and Looker Studio. Rakamin x Bank Muamalat provided data on it. 

## Project Background and Overview
In this project, we suppose that PT Sejahtera Bersama is a company engaged in the digital and technology sector that sells products, such as robots, drones, eBooks, training videos, and others. 

The company had a significant amount of data on sales, products, orders, and customers. This project will thoroughly analyze and synthesize the data to identify insights that will enhance the company's sales. This insight will be used to inform the marketing, sales, and product development teams across the company on the opportune area of improvement.

The SQL queries used to inspect and clean the data for this analysis can be found [here](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/784adb1cf0eaab6d85b31f78641e9d06d0bcd62c/BI%20Analyst%20Project%20Query.sql). Custom SQL queries to Looker regarding customer key metrics can be found [here](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/d6bfa95e4b2ba9c135d08ce29b2b1790f58be105/Custom%20Query%20on%20Looker.txt). An interactive Looker dashboard used to report and explore sales trends and user churn can be found [here](https://github.com/ATHIFAHS/BI-Analyst-Project-1/blob/97dfa8954f142bfbba062c7e86674e2ec9e834ef/Sales%20Performance%20and%20Digitals%20User%20Churn%20Dashboard.pdf).

### Project Key Insights and Recommendations
Insights and recommendations are provided on the following key areas:
- **Consumer Retention and Acquisition**: evaluation of changes in the number of customers annually and quarterly, and churn rate to grasp the number of customers leaving the company's products, understanding of consumer behavior in buying company-provided products
- **Sales Trend Analysis**: investigating trends in YoY and QoQ sales, understanding the impact of consumer behavior on sales
- **Product Performance**: an analysis of the company's various product lines, understanding the impact of order quantities and product prices on sales  
- **City Comparison**: an evaluation of sales and order quantities by city

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
After peaking in the third quarter of 2020, the company's sales continued to decline, with a significant drop in the fourth quarter of 2021. Key performance indicators affecting sales have all shown year-over-year decreases: total orders by 2.4%, total order quantities by 4.5%, total customers by 0.1%, and total new customers by 54.6%. The churn rate is 45.6% annually, indicating that a large number of customers are leaving, which normally needs to be below 20% to be considered low. In this case, user churn itself also directly affects the company's sales. 

Below is the overview page from a Looker Dashboard 

![Sales_Performance_and_User_Churn_Dashboard_page-0001](https://github.com/user-attachments/assets/e9f05ec3-52aa-4c52-97b5-783309b8f754)

## Insight Deep Down
### Consumer Retention and Acquisition
* **Changes annually**: Total customers declined by 0.1% between 2020 and 2021, but repeat customers climbed by 149%. Despite an increase in repeat customers, the churn rate remained high at 45.6%. In this situation, the company is having difficulty maintaining existing clients and acquiring new ones.
* **Changes quarterly**: The churn rate increased quarterly and consistently exceeded 80% in Q4 of 2020 and 2021, indicating a critical issue with customer retention. Despite the high turnover rate, the company managed to show a significant increase in repeat customers each quarter, with a record high of 291 repeat customers in Q4 2021. In contrast, there is a consistent decline in new customer numbers from Q1 to Q4 in both years. There is a clear quarterly trend where Q3 of 2020 had the highest total customers, while Q2 of 2021 similarly had high numbers. But it always drops dramatically in Q4 each year, indicating a lack of customer interest in purchasing digital and technology products during the holiday season.

### Sales Trends Analysis
- **Annual pattern**: In 2021, a 0.1% decline in total customers and a 54.6% decrease in new customers, along with a high churn rate, resulted in a 2.4% and 4.5% decrease in total orders and order quantity, respectively. As a result, revenues decreased by 7.5%, showing that the corporation faces difficulty in expanding annual sales. 
- **Quarter pattern**: Peak sales occurred in Q3 2020 at approximately $250,000, marking a strong mid-year performance. After peaking in the third quarter of 2020, the company's sales continued to decline, with a significant drop in the fourth quarter of 2021, falling below $200,000. Whereas, the peak for 2021 was in Q2 2021 at approximately $240,000, which is similar to Q3 2020 but reflected a decrease in overall customer retention. Sales experienced a decline in Q4 of both years, indicating challenges in maintaining momentum as the year concluded. This correlates with the seasonal trends of declining customers during the end-of-year holiday season.

![Screenshot 2025-05-31 204548](https://github.com/user-attachments/assets/b2cfc954-9aa0-4365-ae98-11912c9f2cb3)

### Product Performance
- 44.6% of the company's orders came from eBooks and training videos, indicating high consumer interest in digital content. It was characterized by an increase in orders for eBooks from 2020 to 2021, along with a decrease in orders for other products. Although eBooks are the top-selling product, it does not mean that eBooks will generate the highest sales, due to the low price of the product compared to others.
- 70% of the company's sales come from technology products, especially robots and drones, despite becoming the lowest-selling products. In Q3 of 2020, technology products were at a notable peak. The sales for robots were around $125000, indicating strong demand.

![Screenshot 2025-05-31 221834](https://github.com/user-attachments/assets/0ed1f422-d51f-4764-ab48-fe3ebcaf3691) 

### City Comparison
- 90% of sales are concentrated in the United States, followed by the United Kingdom, and spread throughout 361 cities, with eBooks being the best-selling product throughout the cities.  
- Washington has the greatest sales among all cities from 2020 to 2021. In this city, eBooks and robots were the best-selling products, but the products with the highest sales are robots and drones. This suggests that the city is interested in both digital products and technology.
- Washington became the city with the most orders in 2020, but it dropped to second position in 2021; Houston took top place, with a little difference.
- Houston's best-selling products include e-books and drone equipment. So, even though the number of orders increased in this city, the sales did not exceed those of Washington because robots, the most expensive product, became the least-sold product. This similarly holds relevant in other cities.

![image](https://github.com/user-attachments/assets/48eee747-90c3-4a7f-b6e0-31e61f407361)

## Recommendations
Based on the insights and findings above, we would recommend that the marketing, sales, and product teams consider the following:
1. **Enhance Customer Retention Strategies**: Implement loyalty programs to reward repeat customers, potentially reducing churn rate and establish a system for gathering customer feedback to understand needs and preferences, focusing on initiatives that create more engaging customer experiences.
2. **Strengthen New Customer Acquisition**: Focus on acquiring new customers through targeted social media and digital marketing strategies, particularly during high-interest periods and encourage current customers to refer new clients by offering incentives such as discounts.
3. **Product Performance Optimization**: Investigate and introduce complementary products to digital and technology items that can attract diverse customer segments, adjust pricing strategies based on sales patterns and product popularity, particularly for high-margin items, and increase promotion and visibility of high-performing product categories possibly through featured placements on platforms and special offers.
4. **Sales Trend Analysis and Forecasting**: Create focused sales campaigns and promotions during historically low sales quarters, especially in Q4, to mitigate declines and stimulate demand.
5. **Geographic Market Expansion**: Examine the potential for customer acquisition in cities other than the primary markets and develop marketing efforts tailored to local preferences based on successful product sales in specific cities.
6. **Focus on High-Margin Products**: Invest in high-demand, high-margin products, such as advanced technology items, to improve profitability, especially where sales have previously peaked.
