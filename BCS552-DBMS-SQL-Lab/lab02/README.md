# Lab 2: Updating and Deleting Rows

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Change a value in a row, then delete a row, and check the table after each step.

## Theory
- `UPDATE table SET column = value WHERE condition` changes existing rows.
- The **WHERE** clause decides which rows change. Without WHERE, **every row** is updated, so always check it.
- The new value can use the old one: `quantity = quantity + 10` adds 10 to the current quantity (120 becomes 130).
- `DELETE FROM table WHERE condition` removes the matching rows only. Without WHERE, all rows are deleted but the table stays.
- Do not confuse: `DELETE` removes rows, `TRUNCATE` removes all rows quickly, `DROP TABLE` removes the whole table.
- After each change run `SELECT * FROM table` to check the result.

## Files in this folder
- `assignment2.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Change the quantity of item_code 1 to 80.

```sql
UPDATE stock SET quantity = 80 WHERE item_code = 1;
SELECT * FROM stock;
```

Result:
```
item_code  item_name  quantity
---------  ---------  --------
        1  Notebook         80
        2  Pen             120
        3  Bag               0
```

### Task 2
Add 10 to the quantity of item_code 2.

```sql
UPDATE stock SET quantity = quantity + 10 WHERE item_code = 2;
SELECT * FROM stock;
```

Result:
```
item_code  item_name  quantity
---------  ---------  --------
        1  Notebook         80
        2  Pen             130
        3  Bag               0
```

### Task 3
Delete the row of item_code 3 from the stock table.

```sql
DELETE FROM stock WHERE item_code = 3;
SELECT * FROM stock;
```

Result:
```
item_code  item_name  quantity
---------  ---------  --------
        1  Notebook         80
        2  Pen             130
```

## How to run
Open `assignment2.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
