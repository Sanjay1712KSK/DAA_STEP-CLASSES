/*
============================================================
HACKATHON 1 – DATA QUERIES
Name : Sanjay Kumar S
Reg No: RA2311026010321
============================================================
*/
use unox2;
/*
============================================================
M7 : Find the Customers Who Have Made the Most Spending
============================================================
*/
SELECT
    u.user_id,
    u.name,
    SUM(p.transaction_amount) AS total_spending
FROM user u
JOIN booking b
    ON u.user_id = b.user_id
JOIN payment p
    ON b.booking_id = p.booking_id
GROUP BY
    u.user_id,
    u.name
ORDER BY
    total_spending DESC;
/*
Sanjay Kumar S - RA2311026010321
*/
/*
============================================================
M8 : Find the Most Popular Showtimes
============================================================
*/
select * from booking;
SELECT
    s.show_datetime,
    COUNT(*) AS booking_count
FROM booking b
JOIN `show` s
    ON b.show_id = s.show_id
GROUP BY s.show_datetime
ORDER BY booking_count DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
M9 : Calculate the Average Spending Per Customer
============================================================
*/

SELECT
    u.user_id,
    u.name,
    AVG(p.amount) AS average_spending
FROM user u
JOIN booking b
    ON u.user_id = b.user_id
JOIN payment p
    ON b.booking_id = p.booking_id
GROUP BY u.user_id, u.name
ORDER BY average_spending DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
M10 : Find the Most Popular Food Items Ordered
============================================================
*/

SELECT
    fi.name,
    SUM(foi.quantity) AS total_quantity_ordered
FROM fooditem fi
JOIN foodorderitem foi
    ON fi.item_id = foi.item_id
GROUP BY fi.item_id, fi.name
ORDER BY total_quantity_ordered DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
M11 : Identify Customers with the Highest Spending
on Food Items
============================================================
*/

SELECT
    u.user_id,
    u.name,
    SUM(foi.quantity * foi.price_at_time) AS total_food_spending
FROM user u
JOIN foodorder fo
    ON u.user_id = fo.user_id
JOIN foodorderitem foi
    ON fo.order_id = foi.order_id
GROUP BY u.user_id, u.name
ORDER BY total_food_spending DESC;

/*
Sanjay Kumar S - RA2311026010321
*/


/*
============================================================
C1 : Determine the Most Frequent Moviegoers
============================================================
*/

SELECT
    u.user_id,
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM user u
JOIN booking b
    ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
ORDER BY total_bookings DESC;

/*
Sanjay Kumar S - RA2311026010321
*/