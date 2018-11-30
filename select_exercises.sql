USE codeup_test_db;

SELECT album_name from albums where artist_name = 'Pink Floyd';
SELECT release_date from albums where album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre from albums where album_name = 'Nevermind';
select album_name from albums where release_date >= 1989;
select album_name from albums where sales < 20;
select album_name from albums where genre = "Rock";
select * from albums;