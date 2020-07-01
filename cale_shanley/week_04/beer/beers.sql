CREATE TABLE beers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  family TEXT,
  image TEXT
);


-- seed data 

INSERT INTO beers
  (name, family)
VALUES
  ('Great Northern', 'Australian');
INSERT INTO beers
  (name, family)
VALUES
  ('Corona', 'Mexican')