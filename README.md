Project Overview
This project focuses on analyzing house rental data using SQL to uncover meaningful insights related to rent trends, house types, city-wise pricing, and property value classification.
The goal is to simulate real-world data analyst tasks such as aggregation, comparison, ranking, and categorization.
🎯 Objectives
Analyze average rent across different house types (1 BHK, 2 BHK, etc.)
Compare city-wise rental prices
Identify high-value and affordable rental locations
Calculate rent per square foot
Rank top expensive houses in each city
Classify houses based on rental value
🗂 Dataset Description
The dataset contains house rental information with the following key columns:
city – City where the house is located
locality – Area or neighborhood
house_type – Type of house (1 BHK, 2 BHK, etc.)
rent – Monthly rent amount
area – Carpet area in square feet
furnishing – Furnishing status (Furnished, Semi-Furnished, Unfurnished)
🛠 Tools & Technologies
Database: MySQL
Language: SQL
Environment: MySQL Workbench
Version Control: Git & GitHub
🔍 Key SQL Concepts Used
Aggregate functions (AVG, SUM, MIN, MAX)
GROUP BY, ORDER BY, HAVING
Subqueries
CASE WHEN for classification
Window functions (ROW_NUMBER)
Data filtering and sorting
📊 Analysis Performed
1️⃣ Rent Analysis
Average rent by house type
City-wise average rent
Houses with rent higher than overall average
2️⃣ City-Level Insights
Top 5 cities with highest average rent
Total rental value by city
Rent difference between most expensive and cheapest house per city
3️⃣ House Type Comparison
1 BHK vs 2 BHK average rent comparison
Cities where 2 BHK rent is higher than 1 BHK
4️⃣ Area & Value Analysis
Minimum, maximum, and average area by house type
Rent per square foot calculation
Classification of houses into:
High Value
Medium Value
Low Value
5️⃣ Advanced Analysis
Top 3 most expensive houses in each city using window functions
Furnishing-wise house count analysis
📈 Sample Insights
Metro cities show significantly higher rent per square foot
Furnished houses tend to have higher rental prices
2 BHK houses generally cost more than 1 BHK across most cities
Certain cities provide better value in terms of rent per area
