---Create a 'STUDENT" Table and use "AND"& "OR"Operators to filter the necessary data asked in the question like: 1)To fetch all the records from the Student table where Age is 18 and ADDRESS is Delhi 2)To fetch all the records from the Student table where NAME is Ram and Age is 18. 3)To fetch all the records from the Student table where NAME is Ram or NAME is SUJIT. 4)To fetch all the records from the Student table where NAME is Ram or Age is 20. 5)To fetch all the records from the Student table where Age is 18 NAME is Ram or RAMESH.--

CREATE TABLE student(
id INT PRIMARY KEY,
name TEXT,
age INT,
address TEXT
);

INSERT INTO student(id , name , age , address)
VALUES
(1 , 'Ram' , 18 , 'Delhi'),
(2 , 'Sujit', 20 , 'Mumbai'),
(3 , 'Ramesh' , 18 , 'Chennai'),
(4 , 'Amit' , 21 , 'Delhi'),
(5 , 'Ram' , 20 , 'Kolkata');

SELECT * FROM student
WHERE age = 18 AND address = 'Delhi';

SELECT * FROM student
WHERE name = 'Ram' OR name = 'Sujit';

SELECT * FROM student
WHERE name = 'Ram' OR age = 20;

SELECT * FROM student
WHERE age = 18 AND (name = 'Ram' OR name = 'Ramesh');

DROP TABLE student