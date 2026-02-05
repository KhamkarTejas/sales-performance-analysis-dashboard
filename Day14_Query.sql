-- Q1. Total Company Sales

SELECT 
    SUM(Sales) AS Total_Sales
FROM
    practice.day14_sales_dataset;
    
-- Q2. Which category generates highest revenue

SELECT 
    Category, SUM(Sales) AS Total_Sales
FROM
    practice.day14_sales_dataset
GROUP BY Category
ORDER BY SUM(Sales) DESC; 

-- Q3. Region-wise total sales

SELECT 
    Region, SUM(Sales) AS Total_Sales
FROM
    practice.day14_sales_dataset
GROUP BY Region
ORDER BY SUM(Sales) DESC; 

-- Q4. Top 5 products by sales

SELECT 
    Product, SUM(Sales) AS Total_Sales
FROM
    practice.day14_sales_dataset
GROUP BY Product
ORDER BY SUM(Sales) DESC
LIMIT 5; 

-- Q5. Compare New vs Returning customers sales

SELECT 
    Customer_Type, SUM(Sales) AS Total_Sales
FROM
    practice.day14_sales_dataset
GROUP BY Customer_Type
ORDER BY SUM(Sales) DESC;

