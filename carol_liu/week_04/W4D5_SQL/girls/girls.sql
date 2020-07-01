CREATE TABLE girls (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  height TEXT,
  weight TEXT,
  hair_color TEXT,
  skin_color TEXT,
  feature TEXT,
  image TEXT
);


-- seed data
INSERT INTO girls (name, height, weight, hair_color, skin_color, feature, image) VALUES ('Alekstar', '170', '50', 'black', 'blue', 'Everyday is a blue day!' 'https://news.cgtn.com/news/3d3d414e3449544e34457a6333566d54/img/da4eeec07aaa458585b3524de2a988e3/da4eeec07aaa458585b3524de2a988e3.jpg');
INSERT INTO girls (name, height, weight, hair_color, skin_color, feature, image) VALUES ('Aleksan', '168', '65', 'brown', 'white', 'Best singer', 'https://i2-prod.mirror.co.uk/incoming/article388847.ece/ALTERNATES/s615b/susan-boyle-pic-rex-612711520.jpg');
INSERT INTO girls (name, height, weight, hair_color, skin_color, feature, image) VALUES ('Aleksbella', '134', '35', 'brown', 'white', 'Protect you from human-beings.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS22SLVZXA3kKFEbDtemLN-tMAs7DNvpYOGYxEiZlliTspz9GZw&usqp=CAU');
