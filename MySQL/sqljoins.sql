/*
============================================================
SQL JOIN – MULTI-LEVEL LAB
Name : Sanjay Kumar S
Reg No: RA2311026010321
============================================================
*/
use unox2;
/*
============================================================
LEVEL 1 – Introduction to Joins & INNER JOIN
============================================================
*/
/*
============================================================
Problem 1 : List movies and their shows
The manager wants a list of all movies
along with their scheduled show times.
============================================================
*/
SELECT
    m.title,
    s.show_datetime
FROM movie m
INNER JOIN `show` s
ON m.movie_id = s.movie_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 2 : List users and their bookings
Find all users who have made at least one
booking, along with booking date.
============================================================
*/
SELECT u.name,b.booking_datetime FROM user u INNER JOIN booking b ON u.user_id = b.user_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 3 : Movies with more than one show
Identify movies that have multiple shows
scheduled.
============================================================
*/
SELECT m.movie_id,m.title,COUNT(*) AS number_of_shows FROM movie m INNER JOIN `show` s ON m.movie_id = s.movie_id GROUP BY m.movie_id, m.title HAVING COUNT(*) > 1;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
LEVEL 2 – LEFT JOIN & RIGHT JOIN
============================================================
*/
/*
============================================================
Problem 1 : List all movies and any reviews
Show all movies, even those without reviews.
============================================================
*/
SELECT m.title, r.review_id FROM movie m LEFT JOIN review r ON m.movie_id = r.movie_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 2 : List all users and their membership info
Display all users, even if they don't have a
membership yet.
============================================================
*/
SELECT u.user_id, u.name, ms.current_points FROM user u LEFT JOIN membership ms ON u.user_id = ms.user_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 3 : Screens and scheduled shows
(even if no shows yet)
Show all screens, including those with no
shows scheduled yet.
============================================================
*/
SELECT sc.screen_id,sc.name,s.show_id,s.show_datetime FROM screen sc LEFT JOIN `show` s ON sc.screen_id = s.screen_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 4 : Right JOIN Example
(Screens and Shows)
Display all shows and their associated
screens. Include shows even if screen
information is missing.
============================================================
*/
SELECT sc.screen_id, sc.name,s.show_id,s.show_datetime FROM screen sc RIGHT JOIN `show` s ON sc.screen_id = s.screen_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
LEVEL 3 – FULL OUTER JOIN & CROSS JOIN
============================================================
*/
/*
============================================================
Problem 1 : All movies and all reviews
Display all movies and reviews, including
movies without reviews and reviews without
movies (simulated FULL OUTER JOIN).
============================================================
*/
SELECT m.movie_id,m.title,r.review_id
FROM movie m LEFT JOIN review r ON m.movie_id = r.movie_id
UNION
SELECT m.movie_id,m.title, r.review_id FROM movie m RIGHT JOIN review r ON m.movie_id = r.movie_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 2 : Users and bookings
(FULL OUTER JOIN simulation)
List all users and bookings, including users
with no bookings and bookings with no user
information.
============================================================
*/
SELECT u.user_id, u.name, b.booking_id, b.booking_datetime 
FROM user u LEFT JOIN booking b ON u.user_id = b.user_id
UNION
SELECT u.user_id, u.name, b.booking_id, b.booking_datetime 
FROM user u RIGHT JOIN booking b ON u.user_id = b.user_id;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 3 : Generate all seat-show combinations
Generate every possible seat-show combination
for planning purposes.
============================================================
*/
SELECT st.seat_id, sh.show_id FROM seat st CROSS JOIN `show` sh;
/*
Sanjay Kumar S - RA2311026010321
*/