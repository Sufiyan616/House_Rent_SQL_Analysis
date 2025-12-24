# 🏠 House Rent Data Analysis Project (SQL)

## 📌 Project Overview
This project focuses on analyzing house rental data using **SQL** to uncover meaningful insights related to rent trends, house types, city-wise pricing, and property value classification.  
The project simulates **real-world data analyst tasks** such as aggregation, ranking, comparison, and categorization.

---

## 🎯 Objectives
- Analyze average rent across different house types (1 BHK, 2 BHK, etc.)
- Identify city-wise rent trends
- Compare 1 BHK vs 2 BHK rental prices
- Calculate rent per square foot
- Classify houses based on rental value
- Rank the most expensive houses in each city

---

## 🗂 Dataset Description
The dataset contains house rental information with the following columns:

- `city` – City where the house is located  
- `locality` – Area or neighborhood  
- `house_type` – Type of house (1 BHK, 2 BHK, etc.)  
- `rent` – Monthly rent amount  
- `area` – Carpet area in square feet  
- `furnishing` – Furnishing status (Furnished, Semi-Furnished, Unfurnished)

---

## 🛠 Tools & Technologies
- **Database:** MySQL  
- **Language:** SQL  
- **IDE:** MySQL Workbench  
- **Version Control:** Git & GitHub  

---

## 🔍 SQL Concepts Used
- Aggregate Functions (`AVG`, `SUM`, `MIN`, `MAX`)
- `GROUP BY`, `ORDER BY`, `HAVING`
- Subqueries
- `CASE WHEN`
- Window Functions (`ROW_NUMBER`)
- Data Filtering and Sorting

---

## 📊 Analysis Performed

### 1️⃣ Rent Analysis
- Average rent by house type  
- City-wise average rent  
- Houses with rent higher than overall average  

### 2️⃣ City-Level Insights
- Top 5 cities with highest average rent  
- City-wise total rental value  
- Rent difference between most expensive and cheapest houses  

### 3️⃣ House Type Comparison
- Comparison of 1 BHK vs 2 BHK average rent  
- Cities where 2 BHK rent is higher than 1 BHK  

### 4️⃣ Area & Value Analysis
- Minimum, maximum, and average area by house type  
- Rent per square foot calculation  
- House value classification:
  - High Value
  - Medium Value
  - Low Value

### 5️⃣ Advanced SQL Analysis
- Top 3 most expensive houses in each city  
- Furnishing-wise house count  

---

## 📈 Key Insights
- Metro cities show higher rent per square foot
- Furnished houses generally have higher rent
- 2 BHK houses cost more than 1 BHK in most cities
- Some cities offer better value based on area and rent

---

## 📂 Project Structure
