# Lab 13: UNION and INTERSECT

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Combine two lists of names, and find the names in both lists.

## Theory
- **Set operators** combine the results of two SELECT statements. Both must have the **same number of columns** with compatible types.
- **UNION** joins the results and **removes duplicates** (Neha appears once).
- **UNION ALL** joins the results and **keeps duplicates** (Neha appears twice). It is faster because it does not check for duplicates.
- **INTERSECT** returns only the rows present in **both** results (Neha).
- **EXCEPT** (called MINUS in Oracle) returns rows of the first result that are not in the second.
- `ORDER BY` is written once at the very end and applies to the combined result.
- INTERSECT is available in MySQL from version 8.0.31, and in PostgreSQL, SQLite and others.

## Files in this folder
- `assignment13.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show all the names from club_a and club_b with each name once, sorted by name. Use UNION.

```sql
SELECT student_name FROM club_a UNION SELECT student_name FROM club_b ORDER BY student_name;
```

Result:
```
student_name
------------
Asha
Meera
Neha
Pooja
Rohan
```

### Task 2
Show the names that are in both clubs, sorted by name. Use INTERSECT.

```sql
SELECT student_name FROM club_a INTERSECT SELECT student_name FROM club_b ORDER BY student_name;
```

Result:
```
student_name
------------
Neha
```

### Task 3
Show all the names from both clubs, including repeated names, sorted by name. Use UNION ALL.

```sql
SELECT student_name FROM club_a UNION ALL SELECT student_name FROM club_b ORDER BY student_name;
```

Result:
```
student_name
------------
Asha
Meera
Neha
Neha
Pooja
Rohan
```

## How to run
Open `assignment13.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
