-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 13
-- Assignment 13: UNION and INTERSECT
-- Aim: Combine two lists of names, and find the names in both lists.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS club_a;
DROP TABLE IF EXISTS club_b;

-- Set-up (given in the assignment, not a task)
CREATE TABLE club_a (student_name VARCHAR(30));
INSERT INTO club_a (student_name) VALUES ('Asha'), ('Rohan'), ('Neha');
CREATE TABLE club_b (student_name VARCHAR(30));
INSERT INTO club_b (student_name) VALUES ('Neha'), ('Pooja'), ('Meera');

-- Task 1: Show all the names from club_a and club_b with each name once, sorted by name. Use UNION.
SELECT student_name FROM club_a UNION SELECT student_name FROM club_b ORDER BY student_name;

-- Task 2: Show the names that are in both clubs, sorted by name. Use INTERSECT.
SELECT student_name FROM club_a INTERSECT SELECT student_name FROM club_b ORDER BY student_name;

-- Task 3: Show all the names from both clubs, including repeated names, sorted by name. Use UNION ALL.
SELECT student_name FROM club_a UNION ALL SELECT student_name FROM club_b ORDER BY student_name;
