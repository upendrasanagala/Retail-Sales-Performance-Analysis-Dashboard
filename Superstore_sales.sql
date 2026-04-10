use superstore;

SELECT COUNT(*) FROM SuperStoreOrders;

SELECT TOP 10 * from superstoreorders;

SELECT DISTINCT region FROM SuperStoreOrders; --how how many regions are there in dataset

SELECT SUM(sales) AS Total_Sales FROM SuperStoreOrders; --to find total revenue

SELECT SUM(profit) AS total_profit
FROM SuperStoreOrders; -- to find total bussiness profit

SELECT region, SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY region; -- which region sells more

SELECT category, SUM(profit) AS total_profit
FROM SuperStoreOrders
GROUP BY category; -- which category earns more profit.

SELECT segment, SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY segment; -- identify best customer segment

SELECT year, SUM(sales) AS yearly_sales
FROM SuperStoreOrders
GROUP BY year
ORDER BY year; -- check bussiness growth year by year 

SELECT product_name, SUM(profit) AS total_profit
FROM SuperStoreOrders
GROUP BY product_name
HAVING SUM(profit) < 0;--fnd products causing losses


