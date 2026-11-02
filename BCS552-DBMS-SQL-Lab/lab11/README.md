# Lab 11: Other Kinds of Joins

**Name:** Nitin Kumar  
**Roll No:** 2410303313  
**Student ID:** BCS2024364  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Use a left join, a cross join and a natural join on two small tables.

## Theory
- **LEFT JOIN** returns **all rows of the left table** and the matching rows of the right table. Where there is no match, the right side is **NULL** (empty). Lions has no player, so it still appears with an empty player name.
- **CROSS JOIN** pairs **every row of one table with every row of the other** (Cartesian product). 3 teams x 3 players = **9 rows**. It has no ON condition.
- **NATURAL JOIN** joins automatically on the columns that have the **same name** in both tables (here `team_id`). No ON clause is needed. Be careful: if tables share extra column names, they are matched too.
- Sorting with `ORDER BY team_name, player_name` sorts by the first column and uses the second to break ties.

## Files in this folder
- `assignment11.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Show each team name with the name of its players, including the team with no players. Use LEFT JOIN with team on the left, and sort by team name, then by player name.

```sql
SELECT team.team_name, player.player_name FROM team LEFT JOIN player ON team.team_id = player.team_id ORDER BY team.team_name, player.player_name;
```

Result:
```
team_name  player_name
---------  -----------
Eagles     Asha
Eagles     Meera
Lions
Tigers     Arjun
```

### Task 2
Show every pair of team name and player name. Use CROSS JOIN between team and player, and sort by team name, then by player name.

```sql
SELECT team.team_name, player.player_name FROM team CROSS JOIN player ORDER BY team.team_name, player.player_name;
```

Result:
```
team_name  player_name
---------  -----------
Eagles     Arjun
Eagles     Asha
Eagles     Meera
Lions      Arjun
Lions      Asha
Lions      Meera
Tigers     Arjun
Tigers     Asha
Tigers     Meera
```

### Task 3
Show each player name with the team name. Use NATURAL JOIN between player and team, and sort by player name.

```sql
SELECT player_name, team_name FROM player NATURAL JOIN team ORDER BY player_name;
```

Result:
```
player_name  team_name
-----------  ---------
Arjun        Tigers
Asha         Eagles
Meera        Eagles
```

## How to run
Open `assignment11.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
