-- Name: Nitin Kumar | Roll No: 2410303313 | Student ID: BCS2024364 | Assignment 11
-- Assignment 11: Other Kinds of Joins
-- Aim: Use a left join, a cross join and a natural join on two small tables.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS team;

-- Set-up (given in the assignment, not a task)
CREATE TABLE team (team_id INT, team_name VARCHAR(20));
INSERT INTO team (team_id, team_name) VALUES (1, 'Eagles'), (2, 'Tigers'), (3, 'Lions');
CREATE TABLE player (player_name VARCHAR(30), team_id INT, age INT);
INSERT INTO player (player_name, team_id, age) VALUES ('Asha', 1, 24), ('Meera', 1, 22), ('Arjun', 2, 27);

-- Task 1: Show each team name with the name of its players, including the team with no players. Use LEFT JOIN with team on the left, and sort by team name, then by player name.
SELECT team.team_name, player.player_name FROM team LEFT JOIN player ON team.team_id = player.team_id ORDER BY team.team_name, player.player_name;

-- Task 2: Show every pair of team name and player name. Use CROSS JOIN between team and player, and sort by team name, then by player name.
SELECT team.team_name, player.player_name FROM team CROSS JOIN player ORDER BY team.team_name, player.player_name;

-- Task 3: Show each player name with the team name. Use NATURAL JOIN between player and team, and sort by player name.
SELECT player_name, team_name FROM player NATURAL JOIN team ORDER BY player_name;
