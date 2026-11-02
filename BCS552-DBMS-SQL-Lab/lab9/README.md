# Lab 9: Aliases and CASE

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Give columns new names and show a value chosen by a condition.

## Theory
- An **alias** (`AS new_name`) gives a column a temporary name in the result. The table itself does not change.
- `CASE WHEN condition THEN value ... ELSE value END` chooses a value depending on a condition, like if-else in programming.
- Conditions are checked from top to bottom and the first true one is used. `ELSE` covers all remaining cases.
- You can calculate in SELECT: `marks + 5` adds 5 to each row's marks in the result only.
- Meera has 33 (less than 40), so her result is Fail. The other three pass.

## Files in this folder
- `assignment9.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show the name and marks. Name the columns student_name and score, using AS.

```sql
SELECT name AS student_name, marks AS score FROM exam_result;
```

Result:
```
student_name  score
------------  -----
Asha             92
Rohan            47
Neha             68
Meera            33
```

### Task 2
Show the name and a column named result: Pass if the marks are 40 or more, otherwise Fail. Use CASE.

```sql
SELECT name, CASE WHEN marks >= 40 THEN 'Pass' ELSE 'Fail' END AS result FROM exam_result;
```

Result:
```
name   result
-----  ------
Asha   Pass
Rohan  Pass
Neha   Pass
Meera  Fail
```

### Task 3
Show the name, and the marks with 5 bonus marks added. Name this column with_bonus.

```sql
SELECT name, marks + 5 AS with_bonus FROM exam_result;
```

Result:
```
name   with_bonus
-----  ----------
Asha           97
Rohan          52
Neha           73
Meera          38
```

## How to run
Open `assignment9.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
