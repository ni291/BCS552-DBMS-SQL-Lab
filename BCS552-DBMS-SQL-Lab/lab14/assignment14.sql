-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 14
-- Assignment 14: Creating and Using a View
-- Aim: Save a query as a view, then read the view.

-- Clean-up (so this file can be run again and again)
DROP VIEW IF EXISTS high_scores;
DROP TABLE IF EXISTS score;

-- Set-up (given in the assignment, not a task)
CREATE TABLE score (name VARCHAR(30), subject VARCHAR(20), marks INT);
INSERT INTO score (name, subject, marks) VALUES ('Asha', 'Maths', 78), ('Rohan', 'Maths', 64), ('Neha', 'Maths', 88), ('Kiran', 'Maths', 52);

-- Task 1: Create a view named high_scores that shows the name and marks of the rows with marks 70 or more.
CREATE VIEW high_scores AS SELECT name, marks FROM score WHERE marks >= 70;

-- Task 2: Show all the rows of the view high_scores.
SELECT * FROM high_scores;

-- Task 3: Show only the names in the view high_scores, sorted by name.
SELECT name FROM high_scores ORDER BY name;
