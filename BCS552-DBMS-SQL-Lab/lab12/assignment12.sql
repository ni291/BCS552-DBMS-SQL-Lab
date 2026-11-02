-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 12
-- Assignment 12: Using a Subquery
-- Aim: Use one query inside another query, with IN.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS club_a;
DROP TABLE IF EXISTS club_b;

-- Set-up (given in the assignment, not a task)
CREATE TABLE club_a (student_name VARCHAR(30));
INSERT INTO club_a (student_name) VALUES ('Asha'), ('Rohan'), ('Neha');
CREATE TABLE club_b (student_name VARCHAR(30));
INSERT INTO club_b (student_name) VALUES ('Neha'), ('Pooja'), ('Meera');

-- Task 1: Show the names in club_a that are also in club_b. Use a subquery after IN.
SELECT student_name FROM club_a WHERE student_name IN (SELECT student_name FROM club_b);

-- Task 2: Show how many names are in club_b. Name the column members.
SELECT COUNT(*) AS members FROM club_b;

-- Task 3: Show the names in club_a, sorted by name.
SELECT student_name FROM club_a ORDER BY student_name;
