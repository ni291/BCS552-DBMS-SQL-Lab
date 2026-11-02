# Lab 12: Using a Subquery

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Use one query inside another query, with IN.

## Theory
- A **subquery** is a SELECT written inside another query, usually inside brackets.
- With `IN (subquery)` the inner query returns a list of values and the outer query keeps the rows whose value is in that list.
- The inner query runs first, here it gives Neha, Pooja, Meera. The outer query then keeps club_a names found in that list, so only **Neha** is shown.
- Subqueries make a question that depends on another table easier to write than long conditions.
- `COUNT(*) AS members` counts the 3 names in club_b.

## Files in this folder
- `assignment12.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show the names in club_a that are also in club_b. Use a subquery after IN.

```sql
SELECT student_name FROM club_a WHERE student_name IN (SELECT student_name FROM club_b);
```

Result:
```
student_name
------------
Neha
```

### Task 2
Show how many names are in club_b. Name the column members.

```sql
SELECT COUNT(*) AS members FROM club_b;
```

Result:
```
members
-------
      3
```

### Task 3
Show the names in club_a, sorted by name.

```sql
SELECT student_name FROM club_a ORDER BY student_name;
```

Result:
```
student_name
------------
Asha
Neha
Rohan
```

## How to run
Open `assignment12.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
