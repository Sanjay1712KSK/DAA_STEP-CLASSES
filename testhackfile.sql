
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
    COUNT(b.booking_id) AS booking_count
FROM booking b
JOIN `show` s ON b.show_id = s.show_id
GROUP BY s.show_datetime
ORDER BY booking_count DESC;


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


-- 11. Identify Customers with the Highest Spending on Food Items
SELECT
    u.user_id,
    u.name,
    SUM(foi.quantity * foi.price_at_time) AS total_food_spending
FROM `user` u
JOIN booking b ON u.user_id = b.user_id
JOIN foodorder fo ON b.booking_id = fo.booking_id
JOIN foodorderitem foi ON fo.order_id = foi.order_id
GROUP BY u.user_id, u.name
ORDER BY total_food_spending DESC;


-- 12. Determine the Most Frequent Moviegoers
SELECT
    u.user_id,
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM `user` u
JOIN booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
ORDER BY total_bookings DESC;


-- 13. Find the Most Active Booking Hours
SELECT
    COUNT(booking_id) AS total_bookings
FROM booking
GROUP BY HOUR(booking_datetime)
ORDER BY total_bookings DESC;


-- 14. Identify the Customers Who Book the Most Tickets
SELECT
    u.user_id,
    u.name,
    COUNT(t.ticket_id) AS total_tickets
FROM `user` u
JOIN booking b ON u.user_id = b.user_id
JOIN ticket t ON b.booking_id = t.booking_id
GROUP BY u.user_id, u.name
ORDER BY total_tickets DESC;


-- 15. Get the Most Popular Movie Genres by Ticket Sales
SELECT
    m.genre,
    COUNT(t.ticket_id) AS total_tickets_sold
FROM movie m
JOIN `show` s ON m.movie_id = s.movie_id
JOIN booking b ON s.show_id = b.show_id
JOIN ticket t ON b.booking_id = t.booking_id
GROUP BY m.genre
ORDER BY total_tickets_sold DESC;


-- 16. Identify the Peak Hours for Food Orders
SELECT
    HOUR(order_datetime) AS food_order_hour,
    COUNT(order_id) AS total_food_orders
FROM foodorder
GROUP BY HOUR(order_datetime)
ORDER BY total_food_orders DESC;


-- 17. Find the Least Popular Movies
SELECT
    m.movie_id,
    m.title,
    COUNT(b.booking_id) AS total_bookings
FROM movie m
LEFT JOIN `show` s ON m.movie_id = s.movie_id
LEFT JOIN booking b ON s.show_id = b.show_id
GROUP BY m.movie_id, m.title
ORDER BY total_bookings ASC;


-- 18. Get the Most Profitable Days for Ticket Sales
SELECT
    DATE(b.booking_datetime) AS booking_date,
    SUM(p.transaction_amount) AS total_ticket_sales
FROM booking b
JOIN payment p ON b.booking_id = p.booking_id
WHERE p.status = 'Success'
GROUP BY DATE(b.booking_datetime)
ORDER BY total_ticket_sales DESC;