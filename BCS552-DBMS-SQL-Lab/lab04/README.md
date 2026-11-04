# Lab 4: Combining Conditions

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Combine conditions with AND, check a range with BETWEEN, and check a list with IN.

## Theory
- **AND** is true only when both conditions are true. **OR** is true when at least one is true. **NOT** reverses a condition.
- Precedence: NOT first, then AND, then OR. Use **brackets** to make the meaning clear.
- `BETWEEN a AND b` checks a range and **includes both ends** (40 and 80 are included).
- `IN (v1, v2, ...)` checks if a value is in a list. It is a shorter form of many OR conditions.
- Eagles and runs > 35 gives only Asha (45). Arjun is Eagles but has only 30 runs.

## Files in this folder
- `assignment4.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show the name and runs of the players from Eagles who scored more than 35 runs. Use AND.

```sql
SELECT name, runs FROM player WHERE team = 'Eagles' AND runs > 35;
```

Result:
```
name  runs
----  ----
Asha    45
```

### Task 2
Show the name and runs of the players whose runs are between 40 and 80. Use BETWEEN.

```sql
SELECT name, runs FROM player WHERE runs BETWEEN 40 AND 80;
```

Result:
```
name   runs
-----  ----
Asha     45
Meera    72
```

### Task 3
Show the name and team of the players who play for Tigers or Lions. Use IN.

```sql
SELECT name, team FROM player WHERE team IN ('Tigers', 'Lions');
```

Result:
```
name   team
-----  ------
Meera  Tigers
Kiran  Lions
```

## How to run
Open `assignment4.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
