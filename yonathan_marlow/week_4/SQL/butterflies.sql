CREATE TABLE butterflies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT ,
  family TEXT,
  image TEXT
);

--SEED DATA

INSERT INTO butterflies (name, family) VALUES ('monarch', 'nymphalidae');
INSERT INTO butterflies (name, family) VALUES ('ulysses', 'blue');

-- -- in main.rb
-- require 'sqlite3'
-- db = SQLite3::Database.new 'database.sqlite3';
--  db.execute 'SELECT * FROM butterflies'
