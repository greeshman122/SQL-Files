CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name TEXT,
    Age INT,
    Grade INT
);

INSERT INTO Students (StudentID, Name, Age, Grade) VALUES
(1, 'Aarav', 15, 'A'),
(2, 'Diya', 14, 'B'),
(3, 'Rohan', 16, 'A'),
(4, 'Meena', 15, 'C'),
(5, 'Tanvi', 14, 'B');

SELECT * FROM Students;

SELECT * FROM Students WHERE Grade = 'A';

SELECT Name, Age FROM Students WHERE Age > 14;
