CREATE TABLE teams (
team_id SERIAL PRIMARY KEY,
team_name VARCHAR(100) NOT NULL,
home_city VARCHAR(100),
founded_year INT
);

CREATE TABLE seasons (
	season_id SERIAL PRIMARY KEY,
	season_year INT UNIQUE NOT NULL;
);

CREATE TABLE performance(
	performance_id SERIAL PRIMARY KEY,
	team_id INT NOT NULL,
	season_id INT NOT NULL,
	matches_played INT,
	matches_won INT,
	CONSTRAINT fk_team
		FOREIGN KEY(team_id)
		REFERENCES teams(team_id),
	CONSTRAINT fk_season
		FOREIGN KEY(season_id)
		REFERENCES seasons(season_id),
	CONSTRAINT unique_team_season
		UNIQUE(team_id,season_id)
);

CREATE TABLE performance(
	performance_id SERIAL PRIMARY KEY,
	team_id INT NOT NULL,
	season_id INT NOT NULL,
	matches_played INT,
	matches_won INT,
	CONSTRAINT fk_team
		FOREIGN KEY(team_id)
		REFERENCES teams(team_id),
	CONSTRAINT fk_season
		FOREIGN KEY(season_id)
		REFERENCES seasons(season_id),
	CONSTRAINT unique_team_season
		UNIQUE(team_id,season_id)
);