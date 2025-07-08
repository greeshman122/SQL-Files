-- Show orders placed after November 5th, 2024
SELECT * FROM Orders
WHERE order_date > '2024-11-05';
-- Show total sales for each product category
SELECT product_category, SUM(quantity * price_per_unit) AS total_sales
FROM Orders
GROUP BY product_category;
-- Only show categories that generated more than ₹2000
SELECT product_category, SUM(quantity * price_per_unit) AS total_sales
FROM Orders
GROUP BY product_category
HAVING SUM(quantity * price_per_unit) > 2000;
-- Show average order value per customer for orders placed in November 2024,
-- only include customers whose total purchase exceeded ₹1000, sorted by total descending.
SELECT customer_name,
       SUM(quantity * price_per_unit) AS total_purchase,
       AVG(quantity * price_per_unit) AS avg_order_value
FROM Orders
WHERE order_date BETWEEN '2024-11-01' AND '2024-11-30'
GROUP BY customer_name
HAVING SUM(quantity * price_per_unit) > 1000
ORDER BY total_purchase DESC;
