USE codeup_test_db;

DROP TABLE IF EXISTS albums;

create table albums(
      id INT UNSIGNED NOT NULL AUTO_INCREMENT, artist_name VARCHAR(50),
      album_name VARCHAR(100),
      release_date DATE,
      sales DECIMAL (4,2),
      genre VARCHAR (25),
      PRIMARY KEY (id)
  );

