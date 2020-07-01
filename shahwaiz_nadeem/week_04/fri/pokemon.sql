CREATE TABLE pokemon (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  pok_type TEXT,
  image TEXT
);


-- seed data
INSERT INTO pokemon (name, pok_type) VALUES ('Bulbasaur', 'grass');
INSERT INTO pokemon (name, pok_type) VALUES ('Squirtle', 'water');
