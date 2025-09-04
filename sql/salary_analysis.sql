-- PART II: SALARY ANALYSIS

-- 1. Return the top 20% of teams in terms of average annual spending
WITH ts AS (
  SELECT teamID, yearID, SUM(salary) AS total_spend
  FROM salaries
  GROUP BY teamID, yearID
),
avg_by_team AS (
  SELECT teamID, AVG(total_spend) AS avg_spend
  FROM ts
  GROUP BY teamID
),
ranked AS (
  SELECT
    teamID,
    avg_spend,
    NTILE(5) OVER (ORDER BY avg_spend DESC) AS spend_pct
  FROM avg_by_team
)
SELECT teamID, ROUND(avg_spend / 1000000, 1) AS avg_spend_millions
FROM ranked
WHERE spend_pct = 1
ORDER BY avg_spend DESC;

-- 2. For each team, show the cumulative sum of spending over the years
WITH ts AS (
			SELECT teamID, yearID, SUM(salary) AS total_sum
			FROM salaries
			GROUP BY teamID, yearID
			ORDER BY teamID, yearID)
SELECT teamID, yearID, total_sum, 
	ROUND(SUM(total_sum) OVER(PARTITION BY teamID ORDER BY yearID) / 1000000, 1)
    AS cul_sum_mil
FROM ts;

-- 3. Return the first year that each team's cumulative spending surpassed 1 billion
WITH ts AS (
			SELECT teamID, yearID, SUM(salary) AS total_sum
			FROM salaries
			GROUP BY teamID, yearID
			ORDER BY teamID, yearID), 
cul_sum AS (
				SELECT teamID, yearID, total_sum, 
				ROUND(SUM(total_sum) OVER(PARTITION BY teamID ORDER BY yearID) / 1000000000, 2)AS cul_sum_bil -- sum in billions
				FROM ts), 
ranked AS (
				SELECT teamID, yearID, cul_sum_bil, 
					ROW_NUMBER() OVER(PARTITION BY teamID ORDER BY cul_sum_bil) AS rn
				FROM cul_sum
				WHERE cul_sum_bil >= 1) 
SELECT teamID, yearID, cul_sum_bil
FROM ranked
WHERE rn = 1;



















