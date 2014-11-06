CREATE SCHEME baseball;

SET search_path = baseball;

/*finished*/
CREATE TABLE team (
  teamId varchar NOT NULL,
  name varchar(50) NOT NULL,
  city varchar(50),
  state varchar(10),
  league varchar(50),
  division varchar(50),
  stadium varchar(50),
  joined numeric,
  PRIMARY KEY (teamId,name)
);

/*Create table batting, Create table pitching*/

CREATE TABLE roster (
  playerId varchar(50) PRIMARY KEY REFERENCES player,
  active varchar,
  inactive varchar,
  dl varchar
);

CREATE TABLE batter (
num_position integer NOT NULL,
position varchar(5),
playerId varchar(50) NOT NULL PRIMARY KEY,
age integer,
g numeric,
pa numeric,
ab numeric,
r numeric,
h numeric,
double integer,
triple integer,
hr integer,
rbi numeric,
sb numeric,
cs numeric,
bb numeric,
so numeric,
ba numeric,
obp numeric,
tb numeric,
gdp numeric,
hbp numeric,
sh numeric,
sf numeric,
ibb numeric,
teamId varchar(3) REFERENCES team
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
teamid varchar(3)
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
  stadium_id varchar(10),
  seating numeric,
  name varchar(100),
  city varchar(25),
  state varchar(25),
  surface varchar(20),
  opened numeric,
  PRIMARY KEY (stadium_id, name)
);
  
  
