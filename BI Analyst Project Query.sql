-- check the uniqueness of primary key in customers table
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT customer_id) AS unique_rows
FROM 
    molten-gantry-460814-v0.BIAnalyst.customers;

--check the uniqueness of primary key in products table 
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT prod_number) AS unique_rows
FROM 
    molten-gantry-460814-v0.BIAnalyst.products;

--check the uniqueness of primary key in orders table
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_rows
FROM 
    molten-gantry-460814-v0.BIAnalyst.orders;

--check the uniqueness of primary key in product_category table
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT category_id) AS unique_rows
FROM 
    molten-gantry-460814-v0.BIAnalyst.product_category;

--create master table
CREATE TABLE molten-gantry-460814-v0.BIAnalyst.master_table AS
select a.customer_email as cust_email,
        a.customer_city as cust_city,
        b.date as order_date,
        c.prod_name as product_name,
        d.category_name,
        b.quantity as order_qty,
        c.price as product_price,
        b.quantity*c.price as total_sales
from
molten-gantry-460814-v0.BIAnalyst.customers as a
join 
molten-gantry-460814-v0.BIAnalyst.orders as b
on a.customer_id=b.customer_id
join 
molten-gantry-460814-v0.BIAnalyst.products as c
on b.prod_number=c.prod_number
join 
molten-gantry-460814-v0.BIAnalyst.product_category as d
on c.category=d.category_id
order by b.date;