--1. ���������� ������������ � ������ �����;

SELECT genre_name, COUNT(musician_name) FROM genre g
JOIN genremusician gm ON g.id = gm.genre_id
JOIN musician m ON gm.musician_id = m.id
GROUP BY genre_name;

--2. ���������� ������, �������� � ������� 2019-2020 �����;

SELECT album_name, COUNT(track_name) FROM album a
JOIN track t ON a.id = t.album_id
WHERE album_release_year BETWEEN 2019 AND 2020
GROUP BY album_name;

--3. ������� ����������������� ������ �� ������� �������;

SELECT album_name, AVG(duration_track) FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY album_name;

--4. ��� �����������, ������� �� ��������� ������� � 2020 ����;

SELECT musician_name, album_release_year FROM musician mu 
JOIN albummusician am  ON am.musician_id = mu.id
JOIN album al ON am.album_id = al.id
WHERE album_release_year != 2020;

--5. �������� ���������, � ������� ������������ ���������� ����������� (�������� ����);

SELECT c.collection_name FROM collection c
JOIN collectiontrack ct ON c.id = ct.collection_id
JOIN track t ON ct.track_id = t.id
JOIN album al ON t.album_id = al.id
JOIN albummusician am ON al.id = am.album_id
JOIN musician m ON am.musician_id = m.id
WHERE m.musician_name = 'Billie Eilish';


--6. �������� ��������, � ������� ������������ ����������� ����� 1 �����;

SELECT album_name, COUNT(genre_name) FROM album al
JOIN albummusician am ON al.id = am.album_id
JOIN musician m ON am.musician_id = m.id
JOIN genremusician gm ON m.id = gm.musician_id 
JOIN genre g ON gm.genre_id = g.id
GROUP BY album_name
HAVING COUNT(genre_name) > 1;

--7. ������������ ������, ������� �� ������ � ��������;

SELECT track_name FROM track t
FULL OUTER JOIN collectiontrack ct ON t.id = ct.track_id
LEFT JOIN collection c ON ct.collection_id = c.id
WHERE c.id IS null;

--8. �����������(-��), ����������� ����� �������� �� ����������������� ���� 
--(������������ ����� ������ ����� ���� ���������);

SELECT m.musician_name, t.duration_track from musician m
JOIN albummusician am ON m.id = am.musician_id 
JOIN album al ON am.album_id = al.id
JOIN track t ON al.id = t.album_id
WHERE t.duration_track = (
SELECT MIN(t.duration_track) FROM track t
);

--9. �������� ��������, ���������� ���������� ���������� ������.

SELECT al.album_name, COUNT(t.track_name) from album al
JOIN track t ON al.id = t.album_id
GROUP BY al.album_name
HAVING COUNT(t.track_name) = (
	SELECT MIN(count) FROM (
		SELECT al.album_name, COUNT(t.track_name) from album al
		JOIN track t ON al.id = t.id
		GROUP BY al.album_name) AS foo);
