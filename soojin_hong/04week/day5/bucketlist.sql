CREATE TABLE bucketlist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  place TEXT,
  image TEXT
);

-- seed data
INSERT INTO bucketlist (name, place) VALUES ('Learn to Surf', 'Byron Bay');
INSERT INTO bucketlist (name, place) VALUES ('Cuddle a koala', 'Currumbin Wildlife Sanctuary');
