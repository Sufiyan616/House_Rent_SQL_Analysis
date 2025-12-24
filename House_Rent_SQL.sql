CREATE DATABASE MyHouseDB;
USE MyHouseDB;

SELECT * FROM house;

-- Q 1 Find the average rent for each house_type (1 BHK, 2 BHK, etc.).
SELECT house_type,ROUND(AVG(rent),2) AS Avg_Rent
FROM house
GROUP BY house_type
ORDER BY Avg_Rent DESC;

-- Q 2 List the top 5 cities with the highest average rent.
SELECT city,ROUND(AVG(rent),2) AS Avg_Rent_By_City
FROM house
GROUP BY city
ORDER BY Avg_Rent_By_City DESC LIMIT 5;

-- Q 3 Display houses where rent is greater than the overall average rent.
SELECT * FROM house
WHERE rent > (SELECT AVG(rent) AS Avg_Rent FROM house);

-- Q 4 Find the minimum, maximum, and average area for each house_type.
SELECT house_type,MIN(area) AS Minimum_Area,
MAX(area) AS Maximum_Area,
ROUND(AVG(area),2) AS Avg_Area
FROM house
GROUP BY house_type;

-- Q 5 Count how many houses are Furnished, Semi-Furnished, and Unfurnished.
SELECT furnishing,COUNT(*) AS Total_Count FROM house
GROUP BY furnishing
ORDER BY Total_Count DESC;

-- Q 6 Calculate the average rent per square foot (rent / area) for each city.
SELECT city,ROUND(AVG(rent / area),2) AS Avg_Area_Rent
FROM house
GROUP BY city
ORDER BY Avg_Area_Rent DESC;

-- Q 7 Find the city-wise total rental value.
SELECT city,SUM(rent) AS Total_Rent
FROM house
GROUP BY city
ORDER BY Total_Rent DESC;

-- 8 Find the top 3 most expensive houses in each city.
SELECT city,rent
FROM (SELECT city,
	 rent,
     ROW_NUMBER() OVER (PARTITION BY city ORDER BY rent DESC) AS
     Rent_By_City
FROM house) t
WHERE Rent_By_City <= 3
ORDER BY city,rent DESC;

-- 9 Identify cities where 2 BHK average rent is higher than 1 BHK average rent.
SELECT city FROM house
GROUP BY city
HAVING AVG(CASE 
		  WHEN house_type = '2 BHK' THEN RENT
          END) > AVG(CASE
                    WHEN house_type = '1 BHK' THEN Rent
                    END);
                    
-- Q 10 Calculate rent per square foot and classify houses as
-- High Value
-- Medium Value
-- Low Value
SELECT house_type,
       locality,
       city,
	   CASE 
            WHEN (rent / area) >= 60 THEN 'High'
            WHEN (rent / area) BETWEEN 40 AND 60 THEN 'Medium'
            ELSE 'Low'
            END AS House_Category
FROM house;

-- Q 11 What Is The Average 2 BHK Rent In Each City,
SELECT city,ROUND(AVG(rent),2) AS Avg_Rent
FROM house
WHERE house_type LIKE '2 BHK'
GROUP BY city
ORDER BY Avg_Rent DESC;

-- Q 12 Calculate the rent difference between the most expensive and cheapest house in each city.
SELECT city,MAX(rent) - MIN(rent) AS House_Difference
FROM house
GROUP BY city
ORDER BY House_Difference DESC;












































