-- Who hit the most home runs in 2019, and what team did they play for?
SELECT teams.name, players.first_name, players.last_name, SUM(stats.home_runs)
FROM teams 
INNER JOIN stats on teams.id = stats.team_id
INNER JOIN players on players.id = stats.player_id
WHERE year = 2019
GROUP BY stats.player_id
ORDER BY stats.runs DESC
LIMIT 1;
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


