/*
============================================================
TOPIC 6 : IS NULL

Name : Sanjay Kumar S
Reg No: RA2311026010321
============================================================
*/


/*
============================================================
Q1. Missing Evidence Investigation

Some failed transactions have no failure reason recorded.
Identify them.
============================================================
*/

SELECT *
FROM payment
WHERE failure_reason IS NULL;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q2. Website Quality Audit

Some movies are missing posters on the website.
Find them.
============================================================
*/

SELECT *
FROM movie
WHERE poster_image_url IS NULL;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q3. Payment Gateway Migration

Locate payments with missing cardholder names.
============================================================
*/

SELECT *
FROM payment
WHERE cardholder_name IS NULL;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q4. Review Data Corruption Check

Find reviews where comments are unavailable.
============================================================
*/

SELECT *
FROM review
WHERE comment IS NULL;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
Q5. Compliance Verification

Find payments where expiry information is missing.
============================================================
*/

SELECT *
FROM payment
WHERE card_expiry IS NULL;

/*
Sanjay Kumar S - RA2311026010321
*/