-- database
CREATE DATABASE catalog

-- authors table
CREATE TABLE authors{
  id INT GENERATED ALWAYS AS INDENTITY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY(id)
}