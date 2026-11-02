-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 5
-- Assignment 5: Pattern Matching with LIKE
-- Aim: Find titles that match a pattern with LIKE.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS book;

-- Set-up (given in the assignment, not a task)
CREATE TABLE book (title VARCHAR(40), category VARCHAR(20), copies INT);
INSERT INTO book (title, category, copies) VALUES ('Database Systems', 'Computer', 3), ('Digital Electronics', 'Electronics', 2), ('Data Structures in C', 'Computer', 2), ('Short Stories', 'Literature', 1);

-- Task 1: Show the titles that start with Data. Use LIKE with the pattern 'Data%'.
SELECT title FROM book WHERE title LIKE 'Data%';

-- Task 2: Show the titles that end with the letter C. Use LIKE with the pattern '%C'.
SELECT title FROM book WHERE title LIKE '%C';

-- Task 3: Show the titles whose second letter is h. Use LIKE with the pattern '_h%'.
SELECT title FROM book WHERE title LIKE '_h%';
