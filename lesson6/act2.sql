-- 1. Find students whose names start with 'A'
SELECT * FROM students
WHERE name LIKE 'A%';

-- 2. Find students whose names end with 'n'
SELECT * FROM students
WHERE name LIKE '%n';

-- 3. Find students whose names contain 'esh'
SELECT * FROM students
WHERE name LIKE '%esh%';

-- 4. Get distinct courses that include 'Python'
SELECT DISTINCT course
FROM students
WHERE course LIKE '%Python%';

-- 5. Filter students in grade 9 whose email contains 'codingal'
SELECT * FROM students
WHERE grade = 9 AND email LIKE '%codingal%';

-- 6. Sort students whose names contain 'an' by name alphabetically
SELECT * FROM students
WHERE name LIKE '%an%'
ORDER BY name ASC;

-- 7. Find students enrolled in any course that starts with 'AI'
SELECT * FROM students
WHERE course LIKE 'AI%';
