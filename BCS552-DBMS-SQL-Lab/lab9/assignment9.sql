-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 9
-- Assignment 9: Aliases and CASE
-- Aim: Give columns new names and show a value chosen by a condition.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS exam_result;

-- Set-up (given in the assignment, not a task)
CREATE TABLE exam_result (name VARCHAR(20), marks INT);
INSERT INTO exam_result (name, marks) VALUES ('Asha', 92), ('Rohan', 47), ('Neha', 68), ('Meera', 33);

-- Task 1: Show the name and marks. Name the columns student_name and score, using AS.
SELECT name AS student_name, marks AS score FROM exam_result;

-- Task 2: Show the name and a column named result: Pass if the marks are 40 or more, otherwise Fail. Use CASE.
SELECT name, CASE WHEN marks >= 40 THEN 'Pass' ELSE 'Fail' END AS result FROM exam_result;

-- Task 3: Show the name, and the marks with 5 bonus marks added. Name this column with_bonus.
SELECT name, marks + 5 AS with_bonus FROM exam_result;
