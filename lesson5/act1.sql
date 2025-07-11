CREATE TABLE Salesman(
S_id INT PRIMARY KEY,
name TEXT,
city TEXT,
comission TEXT
);
INSERT INTO Salesman(S_id , name , city , comission)
VALUES
(5001 , 'JAMES HOOG' , 'NEW YORK' , '0.15'),
(5002 , 'NAIL KNIFE' , 'PARIS' , '0.13'),
(5003 , 'PIT ALEX' , 'LONDON' , '0.11'),
(5004 , 'MC LYON' , 'PARIS' , '0.14'),
(5005 , 'MIKE TYSON' , 'LONDON' , '0.25'),
(5006 , 'LIGER' , 'INDIA' , '0.26');

SELECT * FROM Salesman;

CREATE  TABLE Customers(
C_id INT PRIMARY KEY,
name TEXT,
city TEXT, 
grade INT,
S_id INT);
INSERT INTO Customers(C_id , name , city , grade , S_id)
VALUES
(3001 , 'WAKANDA' , 'NEW YORK' , 100 , 5001),
(3002 , 'IRON MAN' , 'PARIS' , 200 , 5002),
(3003 , 'THOR' , 'LONDON' , 300 , 5003),
(3004 , 'THANOS' , 'PARIS' , 300 , 5004),
(3005 , 'VENOM' , 'LONDON' , 500 , 5005),
(3006 , 'DR.STANGER' , 'LONDON' , 400 , 5005),
(3007 , 'ALLU ARJUN' , 'INDIA' , 600 , 5006);
SELECT * FROM Customers;

CREATE TABLE Orders(
O_id INT PRIMARY KEY,
amt INT,
date INT,
C_id INT,
S_id INT
);
INSERT INTO Orders(O_id , amt , date , C_id , S_id )
VALUES
(70001 , 3000 , 11-6-2025 , 3001 , 5001),
(70002 , 4000 , 12-5-2025 , 3002 , 5002),
(70003 , 5000 , 10-6-2025 , 3003 , 5003),
(70004 , 9000 , 19-6-2025 , 3004 , 5004),
(70005 , 10000 , 30-6-2025 , 3005 , 5005),
(70006 , 100000 , 21-6-2025 , 3006 , 5005),
(70007 , 100000000 , 22-6-2025 , 3007 , 5006);

SELECT Customers.name , Salesman.name
FROM Customers
JOIN Salesman ON Customers.city = Salesman.city;

SELECT Customers.name , Salesman.name
FROM Customers
JOIN Salesman ON Customer.S_id =  Salesman.S_id;

SELECT Orders.O_id , Orders.name , Orders.C_id, Orders.S_id
FROM Orders
JOIN Custoers ON Orders.C_id = Customer.C_id
JOIN Salesman ON Orders.S_id = Salesman.S_id
WHERE Customer.city <> Salesman.city;

SELECT Orders.O_id, Customers.name
FROM Orders
JOIN Customers ON Orders.C_id = Customers.C_id;

SELECT Customer.name AS 'Customer' , Customer.grade AS 'Grade'
FROM Orders
JOIN Salesman ON Orders.S_id = Salesman.S_id
JOIN Customer ON Orders.C_id = Customer.C_id
WHERE Customer.grade IS NOT NULL;

SELECT Customer.name AS 'Customer',
Customer.city AS 'CITY'
Salesman.name AS 'Salesman',
Salesman.comission
FROM Customers
JOIN Salesman ON Customers.S_id = Salesman.S_id
WHERE Salesman.comission BETWEEN 0.12 AND 0.14;

SELECT Orders.O_id , Customer.name,
Salesman.comission AS 'Comission%',
Orders.amt * Salesman.comission AS 'Comission'
FROM Orders
JOIN Salesman ON Orders.S_id = Salesman.S_id
JOIN Customer ON Orders.C_id = Customers.C_id
WHERE Customer.grade >= 200;

SELECT * 
FROM CustomersJOIN Orders ON Customers.C_id = Orders.C_id
WHERE Orders.date = '22-6-2025';