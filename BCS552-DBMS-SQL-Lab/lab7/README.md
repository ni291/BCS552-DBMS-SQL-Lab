# Lab 7: Using Aggregate Functions

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Use one aggregate function in each task.

## Theory
- An **aggregate function** works on many rows and returns **one value**.
- Main ones: `COUNT` (how many), `SUM` (total), `AVG` (average), `MIN` (smallest) and `MAX` (largest).
- `COUNT(*)` counts all rows. `COUNT(column)` counts only the rows where that column is not NULL.
- `AS` gives the result column a readable name (an alias).
- Here: 4 rows, total 12000 + 8500 + 9500 + 11000 = **41000**, highest = **12000**.

## Files in this folder
- `assignment7.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show how many sales rows there are. Name the column num_sales.

```sql
SELECT COUNT(*) AS num_sales FROM sales;
```

Result:
```
num_sales
---------
        4
```

### Task 2
Show the total of all the amounts. Name the column total.

```sql
SELECT SUM(amount) AS total FROM sales;
```

Result:
```
total
-----
41000
```

### Task 3
Show the highest amount. Name the column highest.

```sql
SELECT MAX(amount) AS highest FROM sales;
```

Result:
```
highest
-------
  12000
```

## How to run
Open `assignment7.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
