CREATE TABLE monopoly (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  monopoly TEXT,
  rent INTEGER,
  image TEXT
);

-- seed data

INSERT INTO monopoly (name, monopoly, rent) VALUES ('Electric Company', 'Utility', 'x4');
INSERT INTO monopoly (name, monopoly, rent) VALUES ('Water Works', 'Utility', 'x4');
