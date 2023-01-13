-- database
CREATE DATABASE catalog

-- authors table
CREATE TABLE authors{
  id INT GENERATED ALWAYS AS INDENTITY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY(id)
}

-- genres table
CREATE TABLE genres (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(100)
);

-- labels table
CREATE TABLE labels (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(100)
);

-- books table
CREATE TABLE books (
  id BIGSERIAL PRIMARY KEY,
  publisher VARCHAR(100),
  cover_state VARCHAR(100),
  publish_date DATE,
  label_id INT,
  CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES labels(id)
);

-- music_albums table
CREATE TABLE music_albums (
  id BIGSERIAL PRIMARY KEY,
  publish_date DATE,
  on_spotify BOOLEAN,
  CONSTRAINT fk_genres FOREIGN KEY(genre_id) REFERENCES genres(id)
);

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
CREATE INDEX idx_books_labels ON books(label_id);
CREATE INDEX idx_albums_genres ON music_albums(genre_id);
