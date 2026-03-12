SELECT[Continent]
      ,[Country_or_State]
      ,[Province_or_City]
      ,[Shop_Name]
      ,[Shop_Age]
      ,[PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
      ,[Sales_Person_Name]
      ,[Sales_Person_Department]
      ,[Cost_Price]
      ,[Sale_Price]
      ,[Payment_Method]
      ,[Discount_Amount]
      ,[Purchase_Date]
      ,[Ship_Date]
      ,[Finance_Amount]
      ,[RAM]
      ,[Credit_Score]
      ,[Channel]
      ,[Priority]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
      ,[Storage_Capacity]
  FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]

  
-- 1. Count the total number of sales records.
SELECT COUNT (*)
 FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

 -- 2. Count the number of sales per Continent.
SELECT CONTINENT, COUNT(*) As total_sales
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY CONTINENT;
 
 -- 3. Count the number of sales per Country or State.
SELECT country_or_state,COUNT(*) As total_sales
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY country_or_state;

-- 4. List all distinct Shop Name values.
SELECT DISTINCT Shop_name
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 5. Find the average Sale Price.
SELECT AVG(sale_price)
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 6. Find the highest and lowest Sale Price.
SELECT MAX(sale_price) as highest_price, MIN(sale_price) as lowest_price
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 7. Count the number of sales by Payment Method.
SELECT payment_method,COUNT(*) AS total_sales
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY payment_method;

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT channel, COUNT(*) As total_sales
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY channel;

-- 9. Count the number of sales by Priority level.
SELECT priority_level, COUNT(*) As total_sales
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Priority level;

-- 10. Count the number of distinct PC Make values.
SELECT COUNT (DISTINCT pc_make)
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
SELECT SUM(sale_price) as total_revenue
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 13. Find the average Discount Amount.
SELECT AVG(discount_amount)
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

-- 14. Calculate total Finance Amount issued.
SELECT SUM(finance_amount) as total_finance
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];

