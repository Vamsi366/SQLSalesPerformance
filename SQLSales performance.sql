


--Sales Performance by Product and Category 
--Analyze which categories and sub-categories are performing the best in terms of sales and profit.

SELECT Category, SubCategory, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM superstore$
GROUP BY Category, SubCategory
ORDER BY TotalSales DESC;


--Customer Analysis
--Identify top customers by sales and superstore$, and analyze customer behavior by segment.

SELECT CustomerID, CustomerName, Segment, SUM(Sales) AS TotalSales, COUNT(OrderID) AS Totalsuperstore$
FROM superstore$
GROUP BY CustomerID, CustomerName, Segment
ORDER BY TotalSales DESC;


--Geographic Performance
--Examine sales and profit distribution across different regions, countries, and cities.

SELECT Country, City, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM superstore$
GROUP BY Country, City
ORDER BY TotalSales DESC;


--Discount Impact Analysis
--Investigate how discounts are affecting sales and profits.



SELECT Discount, SUM(Sales) AS SalesWithDiscount, AVG(Profit) AS AverageProfit
FROM superstore$
GROUP BY Discount
ORDER BY Discount;


--Order Priority and Shipping
--Analyze how order priority and shipping mode impact shipping costs and delivery times.

SELECT OrderPriority, Ship.Mode, AVG(ShippingCost) AS AvgShippingCost, DATEDIFF(day, OrderDate, ShipDate) AS AvgDeliveryTime
FROM superstore$
GROUP BY OrderPriority, Ship.Mode;

--Time Series Analysis
--Look at how sales and profits trend over time on a monthly or weekly basis.

SELECT YEAR(OrderDate) AS Year, MONTH(OrderDate) AS Month, SUM(Sales) AS MonthlySales, SUM(Profit) AS MonthlyProfit
FROM superstore$
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year, Month;


--Product Profitability and Volume
--Identify which products are the most profitable and which are the most sold.

SELECT ProductID, ProductName, SUM(Quantity) AS TotalQuantity, SUM(Profit) AS TotalProfit
FROM superstore$
GROUP BY ProductID, ProductName
ORDER BY TotalProfit DESC;

--Total Sales by region

SELECT Region,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM 
    superstore$
GROUP BY Region
ORDER BY Total_Sales DESC;


