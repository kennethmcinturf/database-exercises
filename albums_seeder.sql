USE codeup_test_db;
TRUNCATE albums;

INSERT INTO albums(artist_name, album_name, release_date, sales, genre)
VALUES ("Micheal Jackson", "Thriller", 1982, 66, "Pop, rock, R&B"),
       ("Eagles", "Their Greatest Hits (1971–1975)", 1976, 51, "Country rock, soft rock, folk rock"),
("AC/DC", "Back in Black", 1980, 50, "Hard rock"),
("Pink Floyd", "The Dark Side of the Moon", 1973, 45, "Progressive rock"),
("Meat Loaf", "Bat Out of Hell", 1977, 43, "Hard rock, classic rock, Pop music"),
("Whitney Houston / Various artists", "The Bodyguard", 1992, 42, "R&B, soul, pop, soundtrack"),
("Eagles", "Hotel California	", 1976, 42, "soft rock"),
("Bee Gees / Various artists", "Saturday Night Fever", 1977, 40, "Disco"),
("Fleetwood Mac", "Rumours", 1977, 40, "soft rock");
