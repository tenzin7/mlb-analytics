-- PART I: SCHOOL ANALYSIS

-- 1. In each decade, how many schools were there that produced players?
SELECT 
		FLOOR(yearID/10) * 10 AS decade, 
        COUNT(DISTINCT schoolID) AS num_schools 
FROM schools
GROUP BY 1
ORDER BY 1;

-- 2. What are the names of the top 5 schools that produced the most players?
SELECT 
		sd.name_full AS school,
        COUNT(DISTINCT s.playerID) AS num_players_produced
FROM schools s INNER JOIN school_details sd
	ON s.schoolID = sd.schoolID
GROUP BY 1
ORDER BY num_players_produced DESC
LIMIT 5;

-- 3. For each decade, what were the names of the top 3 schools that produced the most players?
WITH my_cte AS (
	SELECT 
			FLOOR(s.yearID/10) * 10 AS decade, 
			sd.name_full,
			COUNT(DISTINCT s.playerID) AS num_players_produced
	FROM schools s LEFT JOIN school_details sd
		ON s.schoolID = sd.schoolID
	GROUP BY decade, s.schoolID
),

ranked AS (
	SELECT decade, name_full, num_players_produced, 
	DENSE_RANK() OVER(PARTITION BY decade ORDER BY num_players_produced DESC) AS rn
FROM my_cte)

SELECT decade, name_full, num_players_produced
FROM ranked
WHERE rn <= 3
ORDER BY decade DESC, rn; 















