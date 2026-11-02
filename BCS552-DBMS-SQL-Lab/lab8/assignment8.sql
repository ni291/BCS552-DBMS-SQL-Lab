-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 8
-- Assignment 8: Grouping Rows and Using HAVING
-- Aim: Group the rows by region and check the totals of each group.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS shop_sale;

-- Set-up (given in the assignment, not a task)
CREATE TABLE shop_sale (salesperson VARCHAR(20), region VARCHAR(20), amount INT);
INSERT INTO shop_sale (salesperson, region, amount) VALUES ('Deepak', 'North', 12000), ('Pooja', 'South', 8500), ('Deepak', 'South', 9500), ('Lata', 'North', 11000);

-- Task 1: Show each region with the number of sales in it. Use GROUP BY region and sort by region.
SELECT region, COUNT(*) AS num_sales FROM shop_sale GROUP BY region ORDER BY region;

-- Task 2: Show each region with the total amount in it. Use GROUP BY region and sort by region.
SELECT region, SUM(amount) AS total FROM shop_sale GROUP BY region ORDER BY region;

-- Task 3: Show only the regions whose total amount is more than 20000. Use HAVING and sort by region.
SELECT region, SUM(amount) AS total FROM shop_sale GROUP BY region HAVING SUM(amount) > 20000 ORDER BY region;
