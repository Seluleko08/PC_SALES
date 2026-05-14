📊 PC Sales SQL Data Analysis (Data Engineering Exercise)
📌 Overview

This project is my first hands-on exercise in Data Engineering using SQL Server.
The aim of this task was to explore a real-world style PC Sales dataset and practice writing SQL queries to extract useful information from raw data.

Through this exercise, I learned how data is stored in relational databases and how SQL is used to analyze and summarize it.

🗄️ Dataset Information
Database: pc_sales
Table: 1772542271737_pc_data (2)
Tool Used: Microsoft SQL Server Management Studio (SSMS)

The dataset contains sales transaction data including:

Customer details
Product information (PC model, RAM, storage type)
Sales values (sale price, cost price, discounts)
Financial data (finance amount, credit score)
Location data (continent, country, city)
Sales channels and payment methods
Shipping dates
🎯 Objectives

The main objectives of this exercise were:

To explore and understand a structured dataset
To practice basic and intermediate SQL queries
To apply aggregation functions like SUM, COUNT, and AVG
To group and summarize data using GROUP BY
To calculate basic business metrics such as revenue and profit
To build a foundation in Data Engineering concepts
🧠 Skills Practiced
SQL SELECT statements
Data filtering and grouping
Aggregate functions (SUM, COUNT, AVG, MAX, MIN)
Data analysis using GROUP BY and ORDER BY
Basic business KPI calculations
Working with real-world structured data
📊 Example Query
Total Sales per Continent
SELECT 
    Continent,
    COUNT(*) AS total_sales
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)]
GROUP BY Continent;
Total Revenue
SELECT 
    SUM(Sale_Price) AS total_revenue
FROM [pc_sales].[dbo].[1772542271737_pc_data (2)];
📌 Key Learnings

This exercise helped me understand:

How raw data is structured in a database
How SQL is used to extract meaningful insights
The importance of grouping and aggregation in data analysis
The basic workflow of a Data Engineer working with data
👨‍💻 Author

Name: Your Name
Field: Data Engineering (Beginner)
Focus: SQL, Data Analysis, and Data Engineering Fundamentals

📌 Note

This project is part of my learning journey in Data Engineering and is intended to demonstrate my understanding of SQL basics and data exploration techniques.
