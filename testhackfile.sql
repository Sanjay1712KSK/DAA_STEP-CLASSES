
USE unox_hackathon;

-- 7. Find the Customers Who Have Made the Most Spending
SELECT
    u.user_id,
    u.name,
    SUM(p.transaction_amount) AS total_spending
FROM `user` u
JOIN booking b ON u.user_id = b.user_id
JOIN payment p ON b.booking_id = p.booking_id
WHERE p.status = 'Success'
GROUP BY u.user_id, u.name
ORDER BY total_spending DESC;


-- 8. Find the Most Popular Showtimes
SELECT
    s.show_datetime,
    COUNT(b.booking_id) AS total_bookings
FROM `show` s
JOIN booking b ON s.show_id = b.show_id
GROUP BY s.show_datetime
ORDER BY total_bookings DESC;


-- 9. Calculate the Average Spending Per Customer
SELECT
    u.user_id,
    u.name,
    AVG(p.transaction_amount) AS average_spending
FROM `user` u
JOIN booking b ON u.user_id = b.user_id
JOIN payment p ON b.booking_id = p.booking_id
WHERE p.status = 'Success'
GROUP BY u.user_id, u.name
ORDER BY average_spending DESC;


-- 10. Find the Most Popular Food Items Ordered
SELECT
    fi.item_id,
    fi.name,
    SUM(foi.quantity) AS total_quantity_ordered
FROM fooditem fi
JOIN foodorderitem foi ON fi.item_id = foi.item_id
GROUP BY fi.item_id, fi.name
ORDER BY total_quantity_ordered DESC;


-- 11. Identify Customers Who Have Earned More Than 800 Loyalty Points
SELECT
    u.user_id,
    u.name,
    m.current_points
FROM `user` u
JOIN membership m ON u.user_id = m.user_id
WHERE m.current_points > 800
ORDER BY m.current_points DESC;


-- 12. Analyze Revenue Contribution by Each Screen
SELECT
    sc.screen_id,
    sc.name AS screen_name,
    SUM(p.transaction_amount) AS total_revenue
FROM screen sc
JOIN `show` s ON sc.screen_id = s.screen_id
JOIN booking b ON s.show_id = b.show_id
JOIN payment p ON b.booking_id = p.booking_id
WHERE p.status = 'Success'
GROUP BY sc.screen_id, sc.name
ORDER BY total_revenue DESC;


-- 13. Calculate Total Revenue by Movie and Time Slot
SELECT
    m.movie_id,
    m.title,
    HOUR(s.show_datetime) AS time_slot,
    SUM(p.transaction_amount) AS total_revenue
FROM movie m
JOIN `show` s ON m.movie_id = s.movie_id
JOIN booking b ON s.show_id = b.show_id
JOIN payment p ON b.booking_id = p.booking_id
WHERE p.status = 'Success'
GROUP BY m.movie_id, m.title, HOUR(s.show_datetime)
ORDER BY total_revenue DESC;


-- 14. Identify Users Who Have Booked the Most Shows
SELECT
    u.user_id,
    u.name,
    COUNT(DISTINCT b.show_id) AS total_shows_booked
FROM `user` u
JOIN booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
ORDER BY total_shows_booked DESC;


-- 15. Find the Most Profitable Food Items and Their Sales
SELECT
    fi.item_id,
    fi.name,
    SUM(foi.quantity) AS total_quantity_sold,
    SUM(foi.quantity * foi.price_at_time) AS total_sales
FROM fooditem fi
JOIN foodorderitem foi ON fi.item_id = foi.item_id
GROUP BY fi.item_id, fi.name
ORDER BY total_sales DESC;


-- 16. Calculate Total Points Earned by Users in a Given Period
SELECT
    u.user_id,
    u.name,
    SUM(pt.points_earned) AS total_points_earned
FROM `user` u
JOIN pointstransaction pt ON u.user_id = pt.user_id
WHERE pt.transaction_datetime BETWEEN '2025-02-01' AND '2025-03-31'
GROUP BY u.user_id, u.name
ORDER BY total_points_earned DESC;


-- 17. Identify Users Who Haven’t Made a Booking
SELECT
    u.user_id,
    u.name,
    u.email,
    u.phone
FROM `user` u
LEFT JOIN booking b ON u.user_id = b.user_id
WHERE b.booking_id IS NULL;


-- 18. List Users with Membership and Their Current Points
SELECT
    u.user_id,
    u.name,
    u.email,
    m.membership_id,
    m.current_points
FROM `user` u
JOIN membership m ON u.user_id = m.user_id
ORDER BY m.current_points DESC;
