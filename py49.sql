create table if not exists genre (
id serial primary key,
genre_name varchar (100) not null unique
);

create table if not exists musician(
id serial primary key,
musician_name varchar(100) not null,
musician_nikname varchar(100) not null unique,
genre_id integer references genre(id)
);

create table if not exists album (
id serial primary key,
album_name varchar(100) not null,
album_release_year date not null,
musician_id integer references musician(id)
);

--alter table album
--	alter column album_release_year drop constraint unique;
	

create table if not exists track(
id serial primary key,
track_name varchar(100) not null,
duration_track interval minute to second not null,
album_id integer references album(id)
);


--drop table track;
--drop table album;

