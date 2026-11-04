# Lab 1: Creating a Table and Adding Rows

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Create a table, add three rows with one INSERT, and show the table.

## Theory
- A **DBMS** (Database Management System) stores, organises and retrieves data. **SQL** (Structured Query Language) is the language used to talk to it.
- Data is stored in **tables**. A table has **columns** (attributes) and **rows** (records or tuples).
- Each column has a **data type**: `INT` is a whole number, `VARCHAR(30)` is text of up to 30 characters.
- `CREATE TABLE` defines a table. It is a **DDL** (Data Definition Language) command.
- `INSERT INTO table (columns) VALUES (...), (...)` adds rows. One INSERT can add many rows when the value groups are separated by commas. It is a **DML** (Data Manipulation Language) command.
- `SELECT * FROM table` reads all columns (`*`) and all rows. SELECT is a **DQL** (query) command.
- Text values are written inside single quotes, numbers are not.

## Files in this folder
- `assignment1.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Create a table named student with roll_no (INT), name (VARCHAR(30)) and marks (INT).

```sql
CREATE TABLE student (roll_no INT, name VARCHAR(30), marks INT);
```

Result: statement executed successfully (no rows to show).

### Task 2
Add three rows with one INSERT statement: 101 Asha 78; 102 Rohan 64; 103 Neha 88.

```sql
INSERT INTO student (roll_no, name, marks) VALUES (101, 'Asha', 78), (102, 'Rohan', 64), (103, 'Neha', 88);
```

Result: statement executed successfully (no rows to show).

### Task 3
Show all the columns and all the rows of the student table.

```sql
SELECT * FROM student;
```

Result:
```
roll_no  name   marks
-------  -----  -----
    101  Asha      78
    102  Rohan     64
    103  Neha      88
```

## How to run
Open `assignment1.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
