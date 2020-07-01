CREATE TABLE dragonball (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  power_lvl INTEGER,
  race TEXT,
  image TEXT
);

INSERT INTO dragonball (name, power_lvl, race) VALUES ('Goku', 9000, 'Saiyan');
INSERT INTO dragonball (name, power_lvl, race) VALUES ('Vegeta', 10000, 'Saiyan');
INSERT INTO dragonball (name, power_lvl, race) VALUES ('Picollo', 3000, 'Namekian');
