-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 6
-- Assignment 6: Sorting Rows and Removing Repeats
-- Aim: Sort the rows, remove repeated values, and show only some rows.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS product;

-- Set-up (given in the assignment, not a task)
CREATE TABLE product (product_name VARCHAR(30), category VARCHAR(20), price INT);
INSERT INTO product (product_name, category, price) VALUES ('Pen', 'Stationery', 15), ('Notebook', 'Stationery', 60), ('Calculator', 'Electronics', 850), ('Bag', 'Office', 500);

-- Task 1: Show the product name and price of all products, sorted by price from highest to lowest.
SELECT product_name, price FROM product ORDER BY price DESC;

-- Task 2: Show each category once, sorted by category name.
SELECT DISTINCT category FROM product ORDER BY category;

-- Task 3: Show the product name and price of the two most expensive products, sorted by price from highest to lowest.
SELECT product_name, price FROM product ORDER BY price DESC LIMIT 2;
