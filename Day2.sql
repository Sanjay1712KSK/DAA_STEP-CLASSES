/*
============================================================
UNOX MOVIE BOOKING DATABASE
SQL PRACTICE QUESTIONS & SOLUTIONS

Name : Sanjay Kumar S
Reg No: RA2311026010321
============================================================
*/

/*

LEVEL 1
SCENARIO 1 : Movie Listing Dashboard

*/

/* Q1. Retrieve all movie details */

SELECT * FROM movie;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Show only movie title, genre and rating */

SELECT title,genre, rating FROM movie;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. Display results with aliases */

SELECT title AS Movie_Title,genre AS Genre, rating AS Rating FROM movie;

/*
Sanjay Kumar S - RA2311026010321
*/


/*

LEVEL 1
SCENARIO 2 : Screen Management

*/

/* Q1. Retrieve all screen details */

SELECT * FROM screen;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Display only screen name and capacity */

SELECT name,capacity FROM screen;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. Retrieve screens with capacity greater than 150 */

SELECT * FROM screen WHERE capacity > 150;

/*
Sanjay Kumar S - RA2311026010321
*/


/*

LEVEL 1
SCENARIO 3 : User Directory

*/

/* Q1. Retrieve user names and email addresses */

SELECT name, email FROM user;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Use aliases */

SELECT name AS User_Name,email AS Email_Address FROM user;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. List users who have provided a phone number */

SELECT * FROM user WHERE phone IS NOT NULL;

/*
Sanjay Kumar S - RA2311026010321
*/


/*

LEVEL 2
SCENARIO 1 : Targeted Movie Search

*/

/* Q1. Find movies whose title starts with A */

SELECT * FROM movie WHERE title LIKE 'A%';

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Retrieve Action or Comedy movies */

SELECT * FROM movie WHERE genre IN ('Action', 'Comedy');

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. Retrieve movies with ratings between 7.5 and 9.0 */

SELECT * FROM movie WHERE CAST(rating AS DECIMAL(3,1)) BETWEEN 7.5 AND 9.0;

/*
Sanjay Kumar S - RA2311026010321
*/


/*

LEVEL 2
SCENARIO 3 : User Reward Analysis

*/

/* Q1. Retrieve users having points between 100 and 500 */

SELECT * FROM membership WHERE current_points BETWEEN 100 AND 500;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Users with zero points */

SELECT * FROM membership WHERE current_points = 0;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. Members having points and valid email */

SELECT u.name,u.email,m.current_points FROM user u JOIN membership m ON u.user_id = m.user_id WHERE m.current_points > 0 AND u.email IS NOT NULL;

/*
Sanjay Kumar S - RA2311026010321
*/


/*

LEVEL 3
SCENARIO 1 : Movie Ratings Summary

*/

/* Q1. Count number of movies available in each genre */

SELECT genre, COUNT(*) AS Number_Of_Movies FROM movie GROUP BY genre;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Find average rating for each genre */

SELECT genre,AVG(CAST(rating AS DECIMAL(3,1))) AS Average_Rating FROM movie GROUP BY genre;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. Display genres ordered by average rating */

SELECT genre,AVG(CAST(rating AS DECIMAL(3,1))) AS Average_Rating FROM movie GROUP BY genre ORDER BY Average_Rating DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
LEVEL 3
SCENARIO 3 : Food Sales Reporting
============================================================
*/

/* Q1. Find how many times each food item was ordered */

SELECT f.name,COUNT(*) AS Total_Orders FROM fooditem f JOIN foodorderitem fo ON f.item_id = fo.item_id GROUP BY f.item_id, f.name;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q2. Calculate total sales amount for each food item */

SELECT f.name,SUM(fo.quantity * fo.price_at_time) AS Total_Sales FROM fooditem f JOIN foodorderitem fo ON f.item_id = fo.item_id GROUP BY f.item_id, f.name;

/*
Sanjay Kumar S - RA2311026010321
*/


/* Q3. List food items in descending order of total sales */

SELECT
    f.name,
    SUM(fo.quantity * fo.price_at_time) AS Total_Sales
FROM fooditem f
JOIN foodorderitem fo
ON f.item_id = fo.item_id
GROUP BY f.item_id, f.name ORDER BY Total_Sales DESC;

/*
Sanjay Kumar S - RA2311026010321
*/