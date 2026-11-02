# Lab 3: Selecting Columns and Rows with WHERE

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Show some columns, and show only the rows that match a condition.

## Theory
- `SELECT column1, column2 FROM table` shows only the chosen columns (this is called **projection**). `*` means all columns.
- `WHERE` filters rows (this is called **selection**). Only rows for which the condition is true are shown.
- Comparison operators: `=`, `>`, `<`, `>=`, `<=`, and `<>` (not equal).
- Text must be in single quotes (`'Neha'`), numbers are written as they are.
- Marks greater than 60 gives Asha 78, Rohan 64 and Neha 88. Deepak (52) is left out.

## Files in this folder
- `assignment3.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show only the name and marks of all the students.

```sql
SELECT name, marks FROM student;
```

Result:
```
name    marks
------  -----
Asha       78
Rohan      64
Neha       88
Deepak     52
```

### Task 2
Show all the columns of the students whose marks are greater than 60.

```sql
SELECT * FROM student WHERE marks > 60;
```

Result:
```
roll_no  name   marks
-------  -----  -----
    101  Asha      78
    102  Rohan     64
    103  Neha      88
```

### Task 3
Show the name of the student whose roll_no is 103.

```sql
SELECT name FROM student WHERE roll_no = 103;
```

Result:
```
name
----
Neha
```

## How to run
Open `assignment3.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
