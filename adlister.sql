DROP database adlister;
CREATE DATABASE IF NOT EXISTS adlister;

use adlister;

CREATE TABLE users(
  user_id INT UNSIGNED not null AUTO_INCREMENT,
  user_name varchar(50) unique,
  email VARCHAR(50) not null,
  password VARCHAR(50) not null,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  primary key (user_id)
);


CREATE TABLE ad(
  user_id INT UNSIGNED not null,
  cat_id INT UNSIGNED not null,
  ad_title varchar(50),
  description TEXT,
  primary key (user_id,cat_id),
  key `user_id` (`user_id`),
  key `cat_id` (`cat_id`),
  constraint `user_id_ibfk_1` foreign key (`user_id`)
  references `users` (`user_id`) on delete cascade,
  constraint `cat_id_ibfk_2` foreign key (`cat_id`)
  references `categories` (`cat_id`) on delete cascade
);

create table categories(
  cat_id INT UNSIGNED not null AUTO_INCREMENT,
  cat_name varchar(100),
  primary key (cat_id),
  unique key `cat_name` (`cat_name`)
 );




