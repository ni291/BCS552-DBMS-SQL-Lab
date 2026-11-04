# Lab 8: Grouping Rows and Using HAVING

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Group the rows by region and check the totals of each group.

## Theory
- `GROUP BY column` puts rows with the same value into **groups**. An aggregate function then gives one result per group.
- Every column in SELECT must either be in `GROUP BY` or be inside an aggregate function.
- **WHERE** filters individual rows *before* grouping. **HAVING** filters the groups *after* grouping, so it can use aggregate functions.
- Order of clauses: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY.
- North total = 12000 + 11000 = 23000 and South total = 8500 + 9500 = 18000. Only North has a total above 20000.

## Files in this folder
- `assignment8.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show each region with the number of sales in it. Use GROUP BY region and sort by region.

```sql
SELECT region, COUNT(*) AS num_sales FROM shop_sale GROUP BY region ORDER BY region;
```

Result:
```
region  num_sales
------  ---------
North           2
South           2
```

### Task 2
Show each region with the total amount in it. Use GROUP BY region and sort by region.

```sql
SELECT region, SUM(amount) AS total FROM shop_sale GROUP BY region ORDER BY region;
```

Result:
```
region  total
------  -----
North   23000
South   18000
```

### Task 3
Show only the regions whose total amount is more than 20000. Use HAVING and sort by region.

```sql
SELECT region, SUM(amount) AS total FROM shop_sale GROUP BY region HAVING SUM(amount) > 20000 ORDER BY region;
```

Result:
```
region  total
------  -----
North   23000
```

## How to run
Open `assignment8.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
