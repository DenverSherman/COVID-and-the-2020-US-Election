-- Schema for Election and COVID data tables

-- US County Health data - To be used for the cleaned covid data after running the "Cleaning_data.ipynb" file
CREATE TABLE covid_counties (
	"date" DATE NOT NULL,
	county VARCHAR(50) NOT NULL,
	"state" VARCHAR(30) NOT NULL,
	fips INT NOT NULL,
	cases INT NOT NULL,
	deaths NUMERIC NOT NULL,
	stay_at_home_announced VARCHAR(3) NOT NULL,
	stay_at_home_effective VARCHAR(3) NOT NULL,
	latitude NUMERIC NOT NULL,
	longitude NUMERIC NOT NULL,
	total_population NUMERIC NOT NULL,
	percent_single_parent_households_CHR NUMERIC(4,1) NOT NULL,	-- Rounded
	percent_adults_with_diabetes NUMERIC(4,1) NOT NULL,
	percent_food_insecure NUMERIC(4,1) NOT NULL,
	percent_insufficient_sleep NUMERIC(4,1) NOT NULL, -- Rounded
	percent_unemployed_CDC NUMERIC(4,1) NOT NULL,
	percent_no_highschool_diploma NUMERIC(4,1) NOT NULL,
	percent_age_65_and_older NUMERIC(4,1) NOT NULL,
	percent_age_17_and_younger NUMERIC(4,1) NOT NULL,
	percent_disabled NUMERIC(4,1) NOT NULL,
	percent_multi_unit_housing NUMERIC(4,1) NOT NULL,
	percent_fair_or_poor_health NUMERIC(4,1) NOT NULL, -- Rounded
	percent_not_proficient_in_english NUMERIC(4,1) NOT NULL, -- Rounded
	percent_female NUMERIC(4,1) NOT NULL, -- Rounded
	percent_rural NUMERIC(4,1) NOT NULL, -- Rounded
	percent_minorities NUMERIC(4,1) NOT NULL
);

-- US Election Data  - To be used for the cleaned 2020 election data after running the "Cleaning_data.ipynb" file
CREATE TABLE election_results (
	"state" VARCHAR(30) NOT NULL,
	county VARCHAR(50) NOT NULL,
	candidate VARCHAR(25) NOT NULL,
	party VARCHAR (3),
	total_votes INT NOT NULL,
	won BOOLEAN NOT NULL
);