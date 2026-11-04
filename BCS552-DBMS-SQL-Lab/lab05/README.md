# Lab 5: Pattern Matching with LIKE

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Find titles that match a pattern with LIKE.

## Theory
- `LIKE` matches text against a **pattern**. It is used when the exact value is not known.
- Two wildcards: **%** stands for any number of characters (even none), and **_** stands for exactly one character.
- `'Data%'` means starts with Data. `'%C'` means ends with C. `'_h%'` means the second character is h.
- `NOT LIKE` finds the rows that do not match.
- Whether LIKE ignores upper/lower case depends on the DBMS (MySQL and SQLite ignore case by default for plain letters).

## Files in this folder
- `assignment5.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show the titles that start with Data. Use LIKE with the pattern 'Data%'.

```sql
SELECT title FROM book WHERE title LIKE 'Data%';
```

Result:
```
title
--------------------
Database Systems
Data Structures in C
```

### Task 2
Show the titles that end with the letter C. Use LIKE with the pattern '%C'.

```sql
SELECT title FROM book WHERE title LIKE '%C';
```

Result:
```
title
--------------------
Data Structures in C
```

### Task 3
Show the titles whose second letter is h. Use LIKE with the pattern '_h%'.

```sql
SELECT title FROM book WHERE title LIKE '_h%';
```

Result:
```
title
-------------
Short Stories
```

## How to run
Open `assignment5.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
