DROP TABLE IF EXISTS playerChips, playerAddress, players;

CREATE TABLE players (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(10),
  last_name VARCHAR(10),
  username VARCHAR(10),
  gender VARCHAR(10)
  PRIMARY KEY (id)
);

CREATE TABLE playerAddress (
  id INT NOT NULL AUTO_INCREMENT,
  players_id INT NOT NULL,
  address VARCHAR(10),
  member_since VARCHAR(10),
  country VARCHAR(10),
  PRIMARY KEY (id),
  FOREIGN KEY (players_id)
  REFERENCES players (id)
    ON DELETE CASCADE
);

INSERT INTO players
	(first_name, last_name, username, gender)
VALUES 
  ("James","Butt", "The_butt", "Male"),
  ("Josephine","Darakjy", "darky69", "Female"),
  ("Art","Venere", "The_ArtVene", "Male"),
  ("Lenna","Paprocki", "LeanPaprock", "Female"),
  ("Donette","Foller", "I_AMDonette", "Male"),
  ("Simona","Morasca", "SimonSays", "Female"),
  ("Mitsue","Tollner", "Mit_tollner", "Female"),
  ("Leota","Dilliard", "LeoDilli", "Male"),
  ("Sage","Wieser", "Sage_Wieser", "Female"),
  ("Kris","Marrier", "KrisMarr", "Female"),
  ("Minna","Amigon", "Minn_Amigo", "Male"),

  INSERT INTO playerAddress
	(players_id, address, member_since, country)
    VALUES
    ()