CREATE TABLE beers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  family TEXT,
  image TEXT
);

-- seed data
INSERT INTO beers (name, family) VALUES ('Carlton Draught', 'Draught');
INSERT INTO beers (name, family) VALUES ('Cricketers Arms', 'Lager');
