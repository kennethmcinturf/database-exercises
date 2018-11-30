USE codeup_test_db;

DROP TABLE IF EXISTS albums;

create table albums(
      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
      artist_name VARCHAR(50),
      album_name VARCHAR(100) NOT NULL,
      release_date DATE,
      sales DECIMAL (10,2),
      genre VARCHAR (100) NOT NULL,
      PRIMARY KEY (id)
  );


