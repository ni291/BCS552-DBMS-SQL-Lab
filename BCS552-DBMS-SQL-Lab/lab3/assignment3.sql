-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 3
-- Assignment 3: Selecting Columns and Rows with WHERE
-- Aim: Show some columns, and show only the rows that match a condition.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS student;

-- Set-up (given in the assignment, not a task)
CREATE TABLE student (roll_no INT, name VARCHAR(30), marks INT);
INSERT INTO student (roll_no, name, marks) VALUES (101, 'Asha', 78), (102, 'Rohan', 64), (103, 'Neha', 88), (104, 'Deepak', 52);

-- Task 1: Show only the name and marks of all the students.
SELECT name, marks FROM student;

-- Task 2: Show all the columns of the students whose marks are greater than 60.
SELECT * FROM student WHERE marks > 60;

-- Task 3: Show the name of the student whose roll_no is 103.
SELECT name FROM student WHERE roll_no = 103;
