CREATE SCHEME baseball;

SET search_path = baseball;

CREATE TABLE physical_attributes (
  age numeric PRIMARY KEY,
  height numeric,
  weight numeric
);

CREATE TABLE roster (
  player varchar(50) PRIMARY KEY,
  active varchar,
  inactive varchar,
  dl varchar
);

CREATE TABLE player (
  player_id varchar(50) NOT NULL,
  fname varchar(30) NOT NULL,
  lname varchar(30) NOT NULL,
  d_o_b date,
  position varchar,
  PRIMARY KEY(player_id,fname,lname)
);

CREATE TABLE player_stats (
  player_id varchar(50) REFERENCES player,
  avg numeric PRIMARY KEY,
  H numeric,
  HR numeric,
  RBI numeric,
  K numeric,
  BB numeric,
  one_B numeric,
  two_B numeric,
  three_B numeric
);
/*this table should be complete and ready to go*/
CREATE TABLE team (
  team_id numeric NOT NULL,
  name varchar(50) NOT NULL,
  city varchar(50),
  state varchar,
  league varchar(50),
  division varchar(50),
  joined numeric,
  PRIMARY KEY (team_id,name)
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
  stadium_id numeric,
  name varchar(50),
  location varchar(50),
  PRIMARY KEY (stadium_id, name)
);
  
  
