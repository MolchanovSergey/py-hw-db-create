create table if not exists musician(
id serial primary key,
musician_name varchar(100) not null,
musician_nikname varchar(100) not null unique
);

create table if not exists collection(
id serial primary key,
collection_name varchar (100) not null unique,
collection_release_year date not null
);

create table if not exists genre(
id serial primary key,
genre_name varchar (100) not null unique
);

create table if not exists GenreMusician(
genre_id integer references genre(id),
musician_id integer references musician(id),
constraint pk primary key (genre_id, musician_id)
);

create table if not exists album(
id serial primary key,
album_name varchar(100) not null,
album_release_year date not null
);

create table if not exists AlbumMusician(
album_id integer references album(id),
musician_id integer references musician(id),
constraint pk_album_musician primary key (album_id, musician_id)
);

create table if not exists track(
id serial primary key,
track_name varchar(100) not null,
duration_track interval minute to second not null,
album_id integer references album(id)
);

create table if not exists CollectionTrack(
collection_id integer references collection(id),
track_id integer references track(id),
constraint pk_collection_track primary key (collection_id, track_id)
);





  
