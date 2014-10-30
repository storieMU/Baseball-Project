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
  
  
