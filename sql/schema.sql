-- database
CREATE DATABASE catalog

-- authors table
CREATE TABLE authors{
  id INT GENERATED ALWAYS AS INDENTITY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY(id)
}

-- game table

CREATE TABLE games{
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  archived BOOLEAN,
  multiplayer BOOLEAN,
  last_played_at DATE,
  game_id INT
  PRIMARY KEY(id)
  CONSTRAINT fk_author FOREIGN KEY(games_id) REFERENCES authors(id)
}

-- Index
CREATE INDEX idx_games_authors ON games(author_id)
