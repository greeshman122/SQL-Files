CREATE TABLE employees (
    id INT PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INT,
    status TEXT
);

INSERT INTO employees (id, name, department, salary, status) VALUES
(1, 'Alice', 'HR', 40000, 'active'),
(2, 'Bob', 'IT', 60000, 'inactive'),
(3, 'Charlie', 'Finance', 55000, 'active'),
(4, 'Diana', 'IT', 70000, 'active'),
(5, 'Eve', 'HR', 30000, 'inactive');

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM employees;

SELECT * FROM employees WHERE name LIKE 'A%';

SELECT * FROM employees WHERE department = 'IT' AND salary > 60000;

SELECT * FROM employees WHERE status = 'active' OR salary < 35000;

SELECT * FROM employees 
WHERE (department = 'IT' AND salary > 50000) OR (department = 'HR' AND status = 'inactive');

UPDATE employees
SET salary = 45000
WHERE name = 'Eve';

DELETE FROM employees
WHERE status = 'inactive' AND salary < 35000;