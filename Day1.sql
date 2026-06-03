use unox;
show tables;
select * from user;
-- RA2311026010321
-- TOPIC - 1 - SELECT
-- Q1. Weekend Marketing Campaign
-- The marketing manager is preparing a WhatsApp campaign for all registered customers.
-- Before sending messages, she wants a complete list of customer information exactly as it exists in the system so the team can verify data quality.
select * from user;
-- RA2311026010321
-- Q2. Content Acquisition Meeting
-- The content team is meeting movie distributors tomorrow.
-- They need a catalog showing only movie names and genres.
select title,genre from movie;
-- RA2311026010321
-- Q3. Snack Counter Digital Menu
-- The cinema is replacing physical menu boards with digital displays.
-- The design team only needs food item names and descriptions.
select name,description from fooditem;
-- RA2311026010321
-- Q4. Finance Reconciliation
-- An auditor has requested a report showing only transaction amounts and payment outcomes.
select transaction_amount,status from payment;
-- RA2311026010321
-- Q5. Capacity Planning Exercise
-- A fire safety inspection requires management to review every screen's capacity.
select capacity from screen;
-- RA2311026010321
-- TOPIC - 2 - WHERE
-- SANJAY KUMAR S - RA2311026010321
-- Q1. Emergency Seat Allocation
-- A blockbuster release is expected to create massive demand.
-- Management only wants screens capable of handling more than 150 customers.
select * from screen where capacity > 150;
-- SANJAY KUMAR S - RA2311026010321
-- Q2. Fraud Investigation
-- Several customers claim their money was deducted but bookings were not confirmed.
-- Investigate only failed transactions.
select * from payment where status ="failed";
-- SANJAY KUMAR S - RA2311026010321
-- Q3. VIP Customer Experience Review
-- The management team considers customers spending more than ₹1000 as premium guests.
-- Find their bookings.
select * from booking where total_cost>1000;
-- SANJAY KUMAR S - RA2311026010321
-- Q4. Reputation Monitoring
-- Corporate headquarters wants to review highly positive reviews.
-- Include ratings above 4.
select * from review where rating>4;
-- SANJAY KUMAR S - RA2311026010321
-- Q5. Movie Availability Audit
-- Retrieve movies that are currently active on the platform.
select * from movie where status = "Now Showing" ;
-- SANJAY KUMAR S - RA2311026010321
-- TOPIC - 3
-- SANJAY KUMAR S - RA2311026010321
-- Q1. Celebrity Meet-and-Greet
-- A movie star wants to greet customers whose names start with the letter A.
select name from user where name like 'A%';
-- SANJAY KUMAR S - RA2311026010321
-- Q2. Email Migration Project
-- The company wants to identify customers using Gmail addresses.
select * from user where email is not null;
-- SANJAY KUMAR S - RA2311026010321
-- Q3. Action Movie Festival
-- Management is planning an Action Movie Festival.
-- Find all movies whose genre contains "Action".
select * from movie where genre="Action";
-- SANJAY KUMAR S - RA2311026010321
-- Q4. Popcorn Profitability Study
-- The snack division wants all products containing the word "Popcorn".
select * from fooditem where description like "%Popcorn%";
-- SANJAY KUMAR S - RA2311026010321
-- Q5. Sentiment Analysis Pilot
-- The AI team wants reviews containing the word "good".
select * from review where content like "%good%";
-- SANJAY KUMAR S - RA2311026010321
-- Topic 4 : IN
-- Q1. Genre-Based Discount Program
-- A sponsor wants discounts available only for Action, Comedy and Thriller movies.