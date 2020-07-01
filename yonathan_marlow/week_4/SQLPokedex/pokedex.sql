CREATE TABLE pokedex (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    type TEXT,
    description TEXT,
    image TEXT
);

INSERT INTO pokedex (name, type, description) VALUES ('Bulbasaur', 'Grass', 'Looks like a mushroom');
INSERT INTO pokedex (name, type, description) VALUES ('Ivysaur', 'Grass', 'The evolution of Bulbasaur');
INSERT INTO pokedex (name, type, description) VALUES ('Vinosaur', 'Grass', 'The Evolution of Ivysaur');
