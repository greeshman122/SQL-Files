CREATE TABLE PRODUCTS(
p_id INT PRIMARY KEY,
p_name TEXT,
p_desc VARCHAR(255),
p_price REAL,
p_category TEXT
);

INSERT INTO PRODUCTS(p_id , p_name , p_desc , p_price , p_category)
VALUES 
(184 , 'T-Shirt' , 'Its a cotton T-Shirt' , 250.00 , 'Casual Wear'),
(177 , 'OMEN LAPTOP' , 'Its a gaming laptop with the most powerful chip in it' , 275000.56 , 'Electronics'),
(198 , 'FOGG Marco' , 'It is a long lasting perfume', 250.00 , 'Perfume'),
(199 , 'RTX1049' , 'It is a most powerful graphic card' , 36000.00 , 'Electronics'),
(200 , 'Infinix GT 20 pro ' , 'The first gaming mobile in our company' , 25999.00 , 'Mobiles'),
(201 , 'Ninja H2R' , 'The most fastest bike' , 699999.00 , 'Bikes'),
(202 , 'Ninja H2R' , 'The most fastest bike' , 699999.00 , 'Bikes'),
(205 , 'RTX1049' , 'It is a most powerful graphic card' , 36000.00 , 'Electronics');

SELECT * FROM PRODUCTS;
DROP TABLE PRODUCTS ; 

SELECT COUNT(p_name) AS p_count
FROM PRODUCTS;

SELECT AVG(p_price) AS average_price
FROM PRODUCTS;

SELECT SUM(p_price) AS total_price
FROM PRODUCTS;