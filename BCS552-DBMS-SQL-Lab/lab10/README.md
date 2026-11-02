# Lab 10: Joining Two Tables with INNER JOIN

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Join a department table and an employee table on dept_id.

## Theory
- A **join** combines rows from two tables using a related column. Here both tables have `dept_id`.
- **INNER JOIN** keeps only the rows that have a match in **both** tables. The ON clause gives the matching condition.
- Department 40 (Research) has no employee, so it does not appear in the result.
- Use `table.column` (for example `employee.dept_id`) to show which table a column comes from.
- A column used to link tables is a **key**: `dept_id` is the primary key of department and a **foreign key** in employee.
- WHERE, ORDER BY and other clauses can be used together with a join.

## Files in this folder
- `assignment10.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show each employee name with the name of their department. Use INNER JOIN on dept_id and sort by employee name.

```sql
SELECT employee.emp_name, department.dept_name FROM employee INNER JOIN department ON employee.dept_id = department.dept_id ORDER BY employee.emp_name;
```

Result:
```
emp_name  dept_name
--------  ---------
Anita     Accounts
Deepak    Accounts
Lata      Sales
Pooja     Sales
```

### Task 2
Show the names of the employees in the Sales department. Use INNER JOIN and WHERE, and sort by employee name.

```sql
SELECT employee.emp_name FROM employee INNER JOIN department ON employee.dept_id = department.dept_id WHERE department.dept_name = 'Sales' ORDER BY employee.emp_name;
```

Result:
```
emp_name
--------
Lata
Pooja
```

### Task 3
Show the employee name, the department name and the salary, sorted by salary from highest to lowest.

```sql
SELECT employee.emp_name, department.dept_name, employee.salary FROM employee INNER JOIN department ON employee.dept_id = department.dept_id ORDER BY employee.salary DESC;
```

Result:
```
emp_name  dept_name  salary
--------  ---------  ------
Anita     Accounts    90000
Deepak    Accounts    60000
Lata      Sales       55000
Pooja     Sales       42000
```

## How to run
Open `assignment10.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
