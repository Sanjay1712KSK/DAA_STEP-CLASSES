/*
============================================================
SQL SUBQUERIES – MULTI-LEVEL LAB

Name : Sanjay Kumar S
Reg No: RA2311026010321
============================================================
*/
use unox;

/*

LEVEL 1 – Basic Subqueries

*/


/*
Problem 1 : Movies with above-average ratings
The theatre admin wants to find all movies
that performed better than the overall
average rating.
*/
SELECT * FROM movie WHERE rating > (SELECT AVG(rating) FROM movie);
/*
Sanjay Kumar S - RA2311026010321
*/
/*

Problem 2 : Users who booked a "Now Showing" movie
Find users who have at least one booking
for a movie that is currently "Now Showing".
*/
SELECT * FROM user WHERE user_id IN (SELECT b.user_id FROM booking b JOIN `show` s ON b.show_id = s.show_id JOIN movie m ON s.movie_id = m.movie_id    WHERE m.status = 'Now Showing');
/*
Sanjay Kumar S - RA2311026010321
*/


/*
Problem 3 : Movies with more reviews than any
Action movie
Management wants to see which movies have
equal or more reviews than any Action movie.
*/
SELECT movie_id, COUNT(*) AS review_count FROM review GROUP BY movie_id HAVING COUNT(*) >= ANY (SELECT COUNT(*) FROM review r JOIN movie m ON r.movie_id = m.movie_id WHERE m.genre = 'Action' GROUP BY r.movie_id);
/*
Sanjay Kumar S - RA2311026010321
*/
/*
LEVEL 2 – Correlated & EXISTS Subqueries
*/
/*
Problem 1 : Movies with more reviews than the
average per movie
Find all movies whose number of reviews
exceeds the average review count.
*/
SELECT * FROM movie m WHERE ( SELECT COUNT(*) FROM review r WHERE r.movie_id = m.movie_id) > ( SELECT AVG(review_count) FROM ( SELECT COUNT(*) AS review_count FROM review GROUP BY movie_id ) avg_reviews);
/*
Sanjay Kumar S - RA2311026010321
*/
/*
Problem 2 : Movies that have at least one review
Find all movies that have been reviewed
by users at least once.
*/
SELECT * FROM movie m WHERE EXISTS ( SELECT * FROM review r WHERE r.movie_id = m.movie_id );
/*
Sanjay Kumar S - RA2311026010321
*/
/*
Problem 3 : Movies without any bookings
Management wants to identify movies that
were listed but never booked by anyone.
*/
SELECT * FROM movie m WHERE NOT EXISTS ( SELECT * FROM booking b JOIN `show` s ON b.show_id = s.show_id WHERE s.movie_id = m.movie_id);
/*
Sanjay Kumar S - RA2311026010321
*/
/*
LEVEL 3 – Nested & Multi-Layer Subqueries
*/
/*
Problem 1 : Users who booked highly-rated movies Find users who booked movies with ratings above 8.5.
*/
SELECT * FROM user WHERE user_id IN ( SELECT b.user_id FROM booking b WHERE b.show_id IN ( SELECT show_id FROM `show` WHERE movie_id IN ( SELECT movie_id FROM movie WHERE rating > 8.5)));
/*
Sanjay Kumar S - RA2311026010321
*/
/*
Problem 2 : Movies that belong to genres with average rating above 6 Find movies from genres that have an overall average rating above 6.
*/
SELECT * FROM movie WHERE genre IN ( SELECT genre FROM movie GROUP BY genre HAVING AVG(rating) > 6);
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
Problem 3 : Users who booked movies having
more than 90 reviews
Find users who booked movies that have
received more than 90 reviews.
============================================================
*/
SELECT *
FROM user
WHERE user_id IN
(
    SELECT b.user_id
    FROM booking b
    WHERE b.show_id IN
    (
        SELECT show_id
        FROM `show`
        WHERE movie_id IN
        (
            SELECT movie_id
            FROM review
            GROUP BY movie_id
            HAVING COUNT(*) > 90
        )
    )
);
/*
Sanjay Kumar S - RA2311026010321
*/