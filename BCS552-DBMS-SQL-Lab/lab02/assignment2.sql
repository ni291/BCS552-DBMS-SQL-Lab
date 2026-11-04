-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 2
-- Assignment 2: Updating and Deleting Rows
-- Aim: Change a value in a row, then delete a row, and check the table after each step.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS stock;

-- Set-up (given in the assignment, not a task)
CREATE TABLE stock (item_code INT, item_name VARCHAR(30), quantity INT);
INSERT INTO stock (item_code, item_name, quantity) VALUES (1, 'Notebook', 50), (2, 'Pen', 120), (3, 'Bag', 0);

-- Task 1: Change the quantity of item_code 1 to 80.
UPDATE stock SET quantity = 80 WHERE item_code = 1;
SELECT * FROM stock;

-- Task 2: Add 10 to the quantity of item_code 2.
UPDATE stock SET quantity = quantity + 10 WHERE item_code = 2;
SELECT * FROM stock;

-- Task 3: Delete the row of item_code 3 from the stock table.
DELETE FROM stock WHERE item_code = 3;
SELECT * FROM stock;
