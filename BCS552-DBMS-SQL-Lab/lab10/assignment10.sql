-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 10
-- Assignment 10: Joining Two Tables with INNER JOIN
-- Aim: Join a department table and an employee table on dept_id.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

-- Set-up (given in the assignment, not a task)
CREATE TABLE department (dept_id INT, dept_name VARCHAR(20));
INSERT INTO department (dept_id, dept_name) VALUES (10, 'Accounts'), (20, 'Sales'), (40, 'Research');
CREATE TABLE employee (emp_name VARCHAR(30), dept_id INT, salary INT);
INSERT INTO employee (emp_name, dept_id, salary) VALUES ('Anita', 10, 90000), ('Lata', 20, 55000), ('Deepak', 10, 60000), ('Pooja', 20, 42000);

-- Task 1: Show each employee name with the name of their department. Use INNER JOIN on dept_id and sort by employee name.
SELECT employee.emp_name, department.dept_name FROM employee INNER JOIN department ON employee.dept_id = department.dept_id ORDER BY employee.emp_name;

-- Task 2: Show the names of the employees in the Sales department. Use INNER JOIN and WHERE, and sort by employee name.
SELECT employee.emp_name FROM employee INNER JOIN department ON employee.dept_id = department.dept_id WHERE department.dept_name = 'Sales' ORDER BY employee.emp_name;

-- Task 3: Show the employee name, the department name and the salary, sorted by salary from highest to lowest.
SELECT employee.emp_name, department.dept_name, employee.salary FROM employee INNER JOIN department ON employee.dept_id = department.dept_id ORDER BY employee.salary DESC;
