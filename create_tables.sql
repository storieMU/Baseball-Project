DROP SCHEMA IF EXISTS baseball CASCADE;
CREATE SCHEMA baseball;
SET search_path = baseball;

CREATE TABLE users (
	username 		VARCHAR(30) PRIMARY KEY,
	registration_date 	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE authentication (
	username 	VARCHAR(30) PRIMARY KEY,
	password_hash 	CHAR(40) NOT NULL,
	salt 		CHAR(40) NOT NULL,
	FOREIGN KEY (username) REFERENCES users (username)
);

CREATE TABLE team (
  teamId varchar PRIMARY KEY,
  name varchar(50) NOT NULL,
  city varchar(50),
  state varchar(10),
  league varchar(50),
  division varchar(50),
  stadium varchar(50),
  joined numeric
);
/*
CREATE TABLE roster (
  playerId varchar(50) PRIMARY KEY REFERENCES player,
  active varchar,
  inactive varchar,
  dl varchar
);*/

CREATE TABLE batter (
	rank integer NOT NULL,
	position varchar(5),
	name varchar(50) NOT NULL PRIMARY KEY,
	age integer,
	games numeric,
	plate_appearances numeric,
	at_bats numeric,
	runs numeric,
	hits numeric,
	double integer,
	triple integer,
	home_run integer,
	rbi numeric,
	stolen_bases numeric,
	caught_stealing numeric,
	walks numeric,
	strike_out numeric,
	avg numeric,
	on_base_pct numeric,
	total_bases numeric,
	g_double_play numeric,
	hit_by_pitch numeric,
	sac_hits numeric,
	sac_fly numeric,
	int_walks numeric,
	teamID varchar
);

CREATE TABLE pitcher (
	rank integer NOT NULL,
	position varchar(5),
	name varchar(50) NOT NULL PRIMARY KEY,
	age integer,
	wins numeric,
	losses numeric,
	win_loss_pct numeric,
	era numeric,
	games numeric,
	games_started numeric,
	games_finished numeric,
	complete_games numeric,
	shutouts numeric,
	saves numeric,
	innings_pitched numeric,
	hits numeric,
	runs numeric,
	earned_runs numeric,
	homeruns numeric,
	walks numeric,
	int_walks numeric,
	strikeouts numeric,
	hbp numeric,
	balks numeric,
	wild_pitches numeric,
	batters_faced numeric,
	era_plus numeric,
	fip numeric,
	whip numeric,
	hits_nine numeric,
	homeruns_nine numeric,
	walks_nine numeric,
	strikeouts_nine numeric,
	so_w numeric,
	teamId varchar 
);

CREATE TABLE team_stats (
  wins numeric,
  losses numeric,
  ratio numeric,
  above_500 numeric,
  gb numeric,
  pennants varchar(50),
  ws_wins numeric,
  PRIMARY KEY (wins,losses)
);

CREATE TABLE ballpark (
  stadium_id varchar(10) PRIMARY KEY,
  seating numeric,
  name varchar(50),
  city varchar(50),
  state varchar(50),
  surface varchar,
  opened numeric
);

\copy pitcher FROM 'fixed_pitching.csv' HEADER CSV delimiter ',';
\copy batter FROM 'fixed_batting.csv' HEADER CSV delimiter ',';
\i insert_ballpark.sql;
\i Insert_team.sql;

  
  
