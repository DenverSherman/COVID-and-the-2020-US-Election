/*
Query used to merge separate cleaned data tables. It selects all unique counties included in the dataset and shows totals for all columns
on the date of November 3rd 2020 as that is when in person voting ended.
*/

SELECT
	DISTINCT(cc.county),
	cc.state,
	cc.date,
	cc.fips,
	cc.cases,
	cc.deaths,
	cc.stay_at_home_announced,
	cc.stay_at_home_effective,
	cc.latitude,
	cc.longitude,
	cc.total_population,
	cc.percent_single_parent_households_CHR,
	cc.percent_adults_with_diabetes,
	cc.percent_food_insecure, 
	cc.percent_insufficient_sleep, 
	cc.percent_unemployed_CDC, 
	cc.percent_no_highschool_diploma, 
	cc.percent_age_65_and_older, 
	cc.percent_age_17_and_younger, 
	cc.percent_disabled,
	cc.percent_multi_unit_housing, 
	cc.percent_fair_or_poor_health, 
	cc.percent_not_proficient_in_english, 
	cc.percent_female, 
	cc.percent_rural,
	cc.percent_minorities,
	state_winner.winning_party
FROM covid_counties AS cc
LEFT JOIN 
	(SELECT state_votes.state,
		CASE WHEN republican_votes > democrat_votes
		THEN 'REP'
		ELSE 'DEM' END AS "winning_party"
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
ON cc.state = state_winner.state
WHERE cc.date = '2020-11-03'
ORDER BY county;