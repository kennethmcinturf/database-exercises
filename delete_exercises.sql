USE codeup_test_db;

delete from albums where release_date > 1991;
delete from albums where genre = 'disco';
delete from albums where artist_name = 'Eagles';

select Language,Percentage from countrylanguage where CountryCode = 'USA';