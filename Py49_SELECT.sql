SELECT album_name, album_release_year FROM album
	where album_release_year = 2018;

SELECT track_name, duration_track FROM track
	ORDER BY duration_track DESC
	LIMIT 1;

SELECT track_name, duration_track FROM track
	WHERE duration_track >= '00:3:30';

SELECT collection_name FROM collection
	WHERE collection_release_year BETWEEN 2018 AND 2020;

SELECT musician_name FROM musician
	WHERE musician_name NOT LIKE '% %';

SELECT track_name FROM track
	WHERE track_name LIKE '%my%';