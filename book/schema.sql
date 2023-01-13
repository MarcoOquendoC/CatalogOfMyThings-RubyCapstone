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

-- Index
CREATE INDEX idx_books_labels ON books(label_id);
