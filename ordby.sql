/*
============================================================
TOPIC 8 : ORDER BY

Name : Sanjay Kumar S
Reg No: RA2311026010321
============================================================
*/


/*

Q1. Luxury Customer Report

The CEO wants to review the biggest spenders first.

*/

SELECT *
FROM booking
ORDER BY total_cost DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*

Q2. Real-Time Reputation Monitoring

Display the latest customer reviews first.

*/

SELECT *
FROM review
ORDER BY review_datetime DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q3. Emergency Evacuation Planning

Safety officers want to inspect the largest screens first.
============================================================
*/

SELECT *
FROM screen
ORDER BY capacity DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q4. Interactive Movie Kiosk

Display movies alphabetically.
============================================================
*/

SELECT *
FROM movie
ORDER BY title ASC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q5. Revenue Leak Investigation

Show the highest-value transactions first.
============================================================
*/

SELECT *
FROM payment
ORDER BY amount DESC;

/*
Sanjay Kumar S - RA2311026010321
*/