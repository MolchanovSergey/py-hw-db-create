INSERT INTO 
	genre (id, genre_name)
		values
			(1, 'Pop'),
			(2, 'Rock'),
			(3, 'Classic'),
			(4, 'EDM'),
			(5, 'Rave');

INSERT INTO 
	musician (id, musician_name)
		values 
			(1, 'Billie Eilish'),
			(2, 'The Kooks'),
			(3, 'Nothing but thieves'),
			(4, 'ДЕТИ RAVE'),
			(5, 'Nizkiz'),
			(6, 'Мукка'),
			(7, 'Doja Cat'),
			(8, 'Televisor'),
			(9, 'Kali Uchis'),
			(10, 'Соисполнитель');


INSERT INTO 
	album (id, album_name, album_release_year)
		values
			(1, 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', 2019),
			(2, 'The best of ... so far', 2017),
			(3, 'Broken machine', 2017),
			(4, 'Фая', 2019),
			(5, 'Синоптик', 2017),
			(6, 'Девочка с каре', 2019),
			(7, 'Purrr!', 2014),
			(8, 'Venture - EP', 2015),
			(9, 'Isolation', 2018),
			(10, 'Неизвестный альбом', 2018);

			


INSERT INTO 
	track (id, track_name, duration_track, album_id)
		values
			(1, 'ilomilo', '2:36', 1),
			(2, 'you should see me in a crown', '3:01', 1),
			(3, 'Ooh la', '3:29', 2),
			(4, 'Sway', '3:36', 2),
			(5, 'Broken machine', '3:54', 3),
			(6, 'Amsterdam', '4:32', 3),
			(7, 'Дворовые рейвы', '3:51', 4),
			(8, 'Хороводы в аду', '2:31', 4),
			(9, 'Никому', '3:02', 5),
			(10, 'Абсолют', '3:24', 5),
			(11, 'ДЕВОЧКА С КАРЕ', '2:39', 6),
			(12, 'ОТ ЛУНЫ И ДО НЕБА', '2:08', 6),
			(13, 'So high', '3:19', 7),
			(14, 'Beautiful', '3:46', 7),
			(15, 'Deluxe', '4:36', 8),
			(16, 'Find That Someone', '3:48', 8),
			(17, 'you should see me in a crown', '3:01', 1),
			(18, 'Your teeth in my neck', '3:06', 9),
			(20, 'Хороводы в аду', '2:31', 10),
			(19, 'Неизвестный трек', '0:01',10);

		

INSERT INTO 
	collection (id, collection_name, collection_release_year)
		values
			(1, 'first', 2011),
			(2, 'second', 2012),
			(3, 'third', 2013),
			(4, 'fourth', 2014),
			(5, 'fifth', 2015),
			(6, 'sixth', 2016),
			(7, 'seventh', 2017),
			(8, 'eighth', 2018);

INSERT INTO 
	genremusician (genre_id, musician_id)
		values
			(1, 1),
			(2, 2),
			(2, 3),
			(5, 4),
			(2, 5),
			(2, 6),
			(1, 7),
			(4, 8),
			(1, 9),
			(1, 10);

INSERT INTO 
	albummusician (album_id,musician_id)
		values
			(1, 1),
			(2, 2),
			(3, 3),
			(4, 4),
			(5, 5),
			(6, 6),
			(7, 7),
			(8, 8),
			(9, 9),
			(10,10),
			(10,4);
		

INSERT INTO 
	collectiontrack (collection_id, track_id)
		values
			(1, 1),
			(1, 9),
			(2, 2),
			(2, 10),
			(3, 3),
			(3, 11),
			(4, 4),
			(4, 12),
			(5, 5),
			(5, 13),
			(6, 6),
			(6, 14),
			(7, 7),
			(7, 15),
			(8, 8),
			(8, 16),
			(8, 17);
	
