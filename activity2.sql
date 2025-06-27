CREATE TABLE IF NOT EXISTS Salesman (
Salesman_id TEXT,
name TEXT,
city TEXT,
Comission REAL
);

INSERT INTO Salesman (Salesman_id , name , city , Comission) VALUES
('5801' , 'James Hoog' , 'New York' , 0.15),
('5802' , 'Nail Knite' , 'Paris' , 0.13),
('5805' , 'Pit Alex' , 'London' , 0.11),
('5806' , 'Mc Lyon' , 'Paris' , 0.14),
('5807' , 'Paul Adam' , 'Rome' , 0.13),
('5803' , 'Bhargav' , 'India' , 2.45);

SELECT * FROM Salesman;
DROP TABLE Salesman;

CREATE TABLE IF NOT EXISTS Orders (
ord_no INT PRIMARY KEY,
purch_ant REAL,
ord_date INT,
customer_id INT TEXT,
Salesman_id INT TEXT
);

INSERT INTO Orders (ord_no , purch_ant , ord_date , customer_id , Salesman_id ) VALUES
(70001 , 150.1 , 2012-10-05 , '3005' , '5002'),
(70009 , 270.65 , 2012-09-10 , '3001' , '5001'),
(70002 , 65.26 , 2012-10-05 , '3002' , '5003'),
(70004 , 110.5 , 2012-08-17 , '3009' , '5007'),
(70007 , 984.5 , 2012-09-10 , '3006' , '5005'),
(70005 , 2400.6 , 2012-07-27 , '3007' , '5006');

SELECT * FROM Orders;
DROP TABLE Orders;

SELECT name , Comission
FROM Salesman ;