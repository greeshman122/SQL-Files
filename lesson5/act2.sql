-- 1. Create an Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    email VARCHAR(100)
);

-- 2. Insert records
INSERT INTO Employees VALUES (1, 'Amit', 'HR', 50000, 'Hyderabad', 'amit@company.com');
INSERT INTO Employees VALUES (2, 'Priya', 'Finance', NULL, 'Delhi', NULL);
INSERT INTO Employees VALUES (3, 'Raj', 'IT', 72000, 'Bangalore', 'raj@company.com');
INSERT INTO Employees VALUES (4, 'Sneha', 'IT', 68000, 'Hyderabad', 'sneha@company.com');
INSERT INTO Employees VALUES (5, 'Anil', 'HR', 51000, 'Mumbai', 'anil@company.com');
INSERT INTO Employees VALUES (6, 'Neha', 'Finance', 59000, 'Delhi', 'neha@company.com');
INSERT INTO Employees VALUES (7, 'Ravi', 'IT', 63000, 'Chennai', 'ravi@company.com');

-- 3. Update salary of an employee
UPDATE Employees
SET salary = 52000
WHERE emp_id = 1;

-- 4. Delete employee from Chennai
DELETE FROM Employees
WHERE city = 'Chennai';

-- 5. Select employees sorted by salary descending
SELECT * FROM Employees
ORDER BY salary DESC;

-- 6. Use WHERE with IN, AND, OR, LIKE
SELECT * FROM Employees
WHERE department IN ('IT', 'HR') AND city = 'Hyderabad' OR name LIKE 'N%';

-- 7. Use GROUP BY with aggregates
SELECT department,
       COUNT(*) AS total_employees,
       MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary,
       SUM(salary) AS total_salary
FROM Employees
GROUP BY department;

-- 8. Check for NULL and NOT NULL emails
SELECT * FROM Employees
WHERE email IS NULL;

SELECT * FROM Employees
WHERE email IS NOT NULL;

-- 9. Filter salaries between 55000 and 70000
SELECT * FROM Employees
WHERE salary BETWEEN 55000 AND 70000;
