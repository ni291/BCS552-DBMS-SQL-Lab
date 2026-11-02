# Lab 14: Creating and Using a View

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Save a query as a view, then read the view.

## Theory
- A **view** is a **saved query** that behaves like a virtual table. A normal view stores no data of its own.
- `CREATE VIEW name AS SELECT ...` creates it. After that it is used like a table: `SELECT * FROM high_scores`.
- A view always shows the **current** data of the base table. If a mark changes in `score`, the view shows the new result.
- Why views are used: they **simplify** long queries, **hide** columns or rows (security) and give a fixed picture of the data.
- `DROP VIEW name` removes the view. The base table is not affected.

## Files in this folder
- `assignment14.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Create a view named high_scores that shows the name and marks of the rows with marks 70 or more.

```sql
CREATE VIEW high_scores AS SELECT name, marks FROM score WHERE marks >= 70;
```

Result: statement executed successfully (no rows to show).

### Task 2
Show all the rows of the view high_scores.

```sql
SELECT * FROM high_scores;
```

Result:
```
name  marks
----  -----
Asha     78
Neha     88
```

### Task 3
Show only the names in the view high_scores, sorted by name.

```sql
SELECT name FROM high_scores ORDER BY name;
```

Result:
```
name
----
Asha
Neha
```

## How to run
Open `assignment14.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
