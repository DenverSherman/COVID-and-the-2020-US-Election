SELECT *
FROM covid_counties
LEFT JOIN 
	(SELECT state_votes.state,
		CASE WHEN republican_votes > democrat_votes
		THEN 'Republican Win'
		ELSE 'Democrat Win' END AS "Winning_party"
	FROM(
		SELECT rep.state,
			republican_votes,
			democrat_votes
		FROM (SELECT state,
			SUM(total_votes) as republican_votes
			FROM election_results
			WHERE party = 'REP'
			GROUP BY state) as rep
		JOIN 
			(SELECT state,
			SUM(total_votes) as democrat_votes
			FROM election_results
			WHERE party = 'DEM'
			GROUP BY state) AS dem
		ON rep.state = dem.state
		ORDER BY rep.state) AS state_votes) AS state_winner
ON covid_counties.state = state_winner.state;



	

	