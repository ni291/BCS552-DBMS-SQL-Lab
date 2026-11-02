-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 7
-- Assignment 7: Using Aggregate Functions
-- Aim: Use one aggregate function in each task.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS sales;

-- Set-up (given in the assignment, not a task)
CREATE TABLE sales (salesperson VARCHAR(20), region VARCHAR(20), amount INT);
INSERT INTO sales (salesperson, region, amount) VALUES ('Deepak', 'North', 12000), ('Pooja', 'South', 8500), ('Deepak', 'South', 9500), ('Lata', 'North', 11000);

-- Task 1: Show how many sales rows there are. Name the column num_sales.
SELECT COUNT(*) AS num_sales FROM sales;

-- Task 2: Show the total of all the amounts. Name the column total.
SELECT SUM(amount) AS total FROM sales;

-- Task 3: Show the highest amount. Name the column highest.
SELECT MAX(amount) AS highest FROM sales;
