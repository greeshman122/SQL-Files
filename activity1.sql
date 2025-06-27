CREATE TABLE Supplier (
SNumber INT PRIMARY KEY,
SName TEXT,
SStatus TEXT,
SCity TEXT
);

INSERT INTO Supplier(SNumber , SName , SStatus , SCity) VALUES
(11428,'Akhil Goud','Not Delivered','Hyderabad'),
(11410,'Simon Paul', 'Delivered','Vijayawada'),
(11292,'Rithvik','Delivered','Hyderabad'),
(11290,'Nirmala','Not Delivered','Europe');

SELECT * FROM Supplier;
DROP TABLE Supplier;