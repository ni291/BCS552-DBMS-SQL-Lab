-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 4
-- Assignment 4: Combining Conditions
-- Aim: Combine conditions with AND, check a range with BETWEEN, and check a list with IN.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS player;

-- Set-up (given in the assignment, not a task)
CREATE TABLE player (name VARCHAR(30), team VARCHAR(20), runs INT);
INSERT INTO player (name, team, runs) VALUES ('Asha', 'Eagles', 45), ('Meera', 'Tigers', 72), ('Arjun', 'Eagles', 30), ('Kiran', 'Lions', 88);

-- Task 1: Show the name and runs of the players from Eagles who scored more than 35 runs. Use AND.
SELECT name, runs FROM player WHERE team = 'Eagles' AND runs > 35;

-- Task 2: Show the name and runs of the players whose runs are between 40 and 80. Use BETWEEN.
SELECT name, runs FROM player WHERE runs BETWEEN 40 AND 80;

-- Task 3: Show the name and team of the players who play for Tigers or Lions. Use IN.
SELECT name, team FROM player WHERE team IN ('Tigers', 'Lions');
