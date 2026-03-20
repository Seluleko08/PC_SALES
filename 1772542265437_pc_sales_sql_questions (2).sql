
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
-- 2. Count the number of sales per Continent.
-- 3. Count the number of sales per Country or State.
-- 4. List all distinct Shop Name values.
-- 5. Find the average Sale Price.
-- 6. Find the highest and lowest Sale Price.
-- 7. Count the number of sales by Payment Method.
-- 8. Count the number of sales by Channel (Online vs Offline).
-- 9. Count the number of sales by Priority level.
-- 10. Count the number of distinct PC Make values.

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
SELECT SUM(Sale_price) As total_revenue
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
SELECT SUM(Sale_price - Cost_price) As total_profit
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]

-- 13. Find the average Discount Amount.
SELECT AVG(Discount_Amount)
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]

-- 14. Calculate total Finance Amount issued.
SELECT SUM(Finance_Amount) As total_Finance_Amount_issued
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]

-- 15. Find total revenue per PC Make.
SELECT PC_Make,SUM(Sale_price) As total_revenue_per_PC_Make
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY PC_Make
ORDER BY  total_revenue_per_PC_Make DESC;

-- 16. Find average Sale Price per Storage Type.
SELECT Storage_type,AVG(Sale_Price)
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Storage_type
ORDER BY storage_type DESC;

-- 17. Calculate total revenue per Shop Name.
SELECT Shop_Name,SUM(Sale_Price) As total_revenue_per_Shop
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Shop_Name
ORDER BY  total_revenue_per_Shop DESC;

-- 18. Calculate total revenue per Sales Person Name.
SELECT Sales_Person_Name,SUM(Sale_Price) As total_revenue_per_Sales_Person_Name
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Sales_Person_Name
ORDER BY   total_revenue_per_Sales_Person_Name DESC;

-- 19. Find average Credit Score per Credit Score per Payment Method
SELECT Payment_Method ,AVG(Credit_Score) As  AVG_Credit_Score
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Payment_Method 
ORDER BY  AVG_Credit_Score DESC

-- 20. Calculate total Cost of Repairs per Sales Person Department.
SELECT	Sales_Person,Department,SUM (Repairs_Cost) As total_Repair_Cost
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Sales_Person,Department;


-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
SELECT Shop_Name,SUM(Sale_Price) As  profit_per_Shop_Name
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Shop_Name;

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
SELECT SUM(Sale_Price - Cost_Price) As profit_margin_per_sale
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 23. Determine which Continent has the highest total revenue.
SELECT Top 1 Continent,SUM(Sale_Price) As Highes_total_revenue
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Continent;


-- 24. Calculate average Sale Price per RAM size.
SELECT RAM, AVG(Sale_Price) As Price_per_RAM_size
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY RAM
ORDER BY RAM DESC;

-- 25. Find the PC Model with the highest Sale Price.
SELECT TOP 1 PC_Model,Sale_price
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
ORDER BY Sale_price DESC;

-- 26. Calculate the average number of days between Purchase Date and Ship Date.
SELECT AVG(Datediff(DAY,
Try_Convert(date,purchase_date),
	Try_convert(date,ship_date)
	))As avg_days
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 27. Determine which Sales Person Department generates the highest revenue.
SELECT TOP 1 Sales_Person_Department
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 28. Calculate total revenue per Storage Capacity.
SELECT Storage_Capacity, SUM(Sale_Price) As total_revenue_per_Storage_Capacity
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Storage_Capacity;

-- 29. Identify sales where Sale Price is lower than PC Market Price.

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

