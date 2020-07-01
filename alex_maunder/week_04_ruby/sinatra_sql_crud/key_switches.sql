-- id        name       brand        image (urls)
-- integer   text       text         text -- you could store this as a string but strings have a limit of 256 characters, URL may be longer than that.
--
-- 1         Blue       Cherry       http://....
-- 2         Green      Gateron      http://....

CREATE TABLE keyswitches (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  brand TEXT,
  image TEXT
);

-- seed data
INSERT INTO keyswitches (name, brand) VALUES ('Blue', 'Cherry');
INSERT INTO keyswitches (name, brand) VALUES ('Green', 'Gateron');

-- -- next steps
-- 1. apply this to the db
-- 2. test: .schema, SELECT *
-- 3. connect to the db from RUBY
