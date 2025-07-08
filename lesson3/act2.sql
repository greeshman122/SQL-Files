CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_category VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    order_date DATE
);
INSERT INTO Orders VALUES
(1, 'Aditi', 'Books', 3, 250.00, '2024-11-01'),
(2, 'Rahul', 'Stationery', 10, 15.00, '2024-11-02'),
(3, 'Nikita', 'Electronics', 1, 1200.00, '2024-11-03'),
(4, 'Aditi', 'Books', 2, 300.00, '2024-11-04'),
(5, 'Kunal', 'Clothing', 5, 400.00, '2024-11-05'),
(6, 'Rahul', 'Electronics', 2, 1100.00, '2024-11-06'),
(7, 'Nikita', 'Books', 1, 200.00, '2024-11-06'),
(8, 'Kunal', 'Clothing', 1, 600.00, '2024-11-07'),
(9, 'Aditi', 'Stationery', 15, 10.00, '2024-11-08'),
(10, 'Rahul', 'Electronics', 1, 1300.00, '2024-11-09');
SELECT COUNT(*) AS total_orders FROM Orders;
SELECT product_category, SUM(quantity * price_per_unit) AS total_sales
FROM Orders
GROUP BY product_category;
SELECT customer_name, AVG(quantity) AS avg_quantity
FROM Orders
GROUP BY customer_name;
SELECT product_category,
       MAX(price_per_unit) AS max_price,
       MIN(price_per_unit) AS min_price
FROM Orders
GROUP BY product_category;
SELECT product_category, SUM(quantity * price_per_unit) AS total_sales
FROM Orders
GROUP BY product_category
HAVING SUM(quantity * price_per_unit) > 2000;
SELECT product_category, SUM(quantity * price_per_unit) AS total_revenue
FROM Orders
GROUP BY product_category
ORDER BY total_revenue DESC;
