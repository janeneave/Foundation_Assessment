DROP DATABASE IF EXISTS foundation_exam_alt;
CREATE DATABASE foundation_exam_alt;
USE foundation_exam_alt;

CREATE TABLE movie_info(
   movie_ID integer PRIMARY KEY,
   movie_name varchar(50) NOT NULL,
   movie_length TIME NOT NULL,
   age_rating varchar(10) NOT NULL
 );
 
 CREATE TABLE screens(
   screen_ID integer PRIMARY KEY,
   four_k boolean NOT NULL
 );
 
 CREATE TABLE showings(
   showing_ID integer primary key,
   movie_ID integer NOT NULL,
   screen_ID integer NOT NULL,
   start_time TIME NOT NULL,
   available_seats integer NOT NULL
 );
 
 INSERT INTO movie_info(movie_ID, movie_name, movie_length, age_rating)
 VALUES 
 (1, "The Movie", "2:19:00", "12A"),
 (2, "The Other Movie", "1:30:00", "15"),
 (3, "The 3D Amazing Movie",  "1:42:00", "PG"),
 (4, "La Allure", "1:09:00", "18"),
 (5, "The Cartoon", "1:15:00", "U"),
 (6, "The Scary Cartoon", "1:23:00", "PG"),
 (7, "The Coming Of Age", "1:40:00", "12A"),
 (8, "The War", "2:07:00", "15"),
 (9, "The Murder Mystery", "1:47:00", "15");

 INSERT INTO screens(screen_ID, four_k)
 VALUES 
  (1, True),
  (2, False),
  (3, True),
  (4, True),
  (5, True),
  (6, True),
  (7, True),
  (8, False),
  (9, True),
  (10, True);

 INSERT INTO showings(showing_ID, movie_ID,screen_ID, start_time, available_seats)
 VALUES 
  (1, 1, 2, '12:00:00', 10), 
  (2, 1, 2, '17:00:00', 23), 
  (3, 2, 9, '10:30:00', 30), 
  (4, 3, 1, '07:00:00', 38), 
  (5, 3, 5, '10:00:00', 26), 
  (6, 3, 1, '17:00:00', 5), 
  (7, 3, 1, '19:00:00', 0), 
  (8, 3, 5, '14:00:00', 2), 
  (9, 4, 9, '20:00:00', 14), 
  (10, 4, 9, '23:00:00', 23), 
  (11, 5, 6, '09:30:00', 30), 
  (12, 5, 6, '12:30:00', 7), 
  (13, 5, 6, '14:30:00', 0), 
  (14, 5, 6, '15:20:00', 0), 
  (15, 6, 10, '10:00:00', 32), 
  (16, 6, 10, '13:30:00', 25), 
  (17, 6, 10, '17:00:00', 14), 
  (18, 7, 7, '12:00:00', 36), 
  (19, 8, 4, '15:00:00', 24), 
  (20, 9, 3, '17:00:00', 0);
  
SELECT * FROM movie_info;
SELECT * FROM screens;
SELECT * FROM showings;

-- 4.1
UPDATE showings s
SET available_seats = 0
WHERE movie_ID = (
	SELECT movie_ID
    FROM movie_info
    WHERE movie_name = 'The Other Movie'
    );

-- 4.2
SELECT m.movie_name, m.age_rating
FROM movie_info m
WHERE m.age_rating like 'PG' or m.age_rating = 'U';

-- 4.3
SELECT DISTINCT m.movie_name, s.screen_ID
FROM showings sh
JOIN movie_info m
ON m.movie_ID = sh.movie_ID
JOIN screens s
ON s.screen_ID = sh.screen_ID
WHERE s.four_k = False;

-- 4.4 
SELECT m.movie_name, sh.start_time
FROM showings sh
JOIN movie_info m
ON m.movie_ID = sh.movie_ID
GROUP BY sh.available_seats, m.movie_name, sh.start_time
ORDER BY sh.available_seats DESC
LIMIT 1;

-- 4.5
SELECT m.movie_name, sh.start_time, ADDTIME(sh.start_time, m.movie_length) as end_time
FROM showings sh
JOIN movie_info m
ON m.movie_ID = sh.movie_ID;
