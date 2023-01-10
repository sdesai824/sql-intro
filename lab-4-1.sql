-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.first_name, players.last_name, SUM(stats.hits)
FROM players INNER JOIN stats ON players.id = stats.player_id
where players.first_name = "Barry"
AND players.last_name = "Bonds";
