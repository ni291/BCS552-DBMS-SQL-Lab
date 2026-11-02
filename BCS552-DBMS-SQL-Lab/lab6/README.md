# Lab 6: Sorting Rows and Removing Repeats

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Sort the rows, remove repeated values, and show only some rows.

## Theory
- `ORDER BY column` sorts the result. `ASC` (smallest first) is the default and `DESC` gives largest first.
- `DISTINCT` removes repeated values from the result. Stationery appears twice in the table but once in the result.
- `LIMIT n` shows only the first n rows. Used with `ORDER BY price DESC` it gives the top n.
- `LIMIT` works in MySQL, PostgreSQL and SQLite. SQL Server uses `TOP n` and Oracle uses `FETCH FIRST n ROWS ONLY`.
- Clause order: SELECT, FROM, WHERE, ORDER BY, LIMIT.

## Files in this folder
- `assignment6.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show the product name and price of all products, sorted by price from highest to lowest.

```sql
SELECT product_name, price FROM product ORDER BY price DESC;
```

Result:
```
product_name  price
------------  -----
Calculator      850
Bag             500
Notebook         60
Pen              15
```

### Task 2
Show each category once, sorted by category name.

```sql
SELECT DISTINCT category FROM product ORDER BY category;
```

Result:
```
category
-----------
Electronics
Office
Stationery
```

### Task 3
Show the product name and price of the two most expensive products, sorted by price from highest to lowest.

```sql
SELECT product_name, price FROM product ORDER BY price DESC LIMIT 2;
```

Result:
```
product_name  price
------------  -----
Calculator      850
Bag             500
```

## How to run
Open `assignment6.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
