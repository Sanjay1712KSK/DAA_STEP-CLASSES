-- SANJAY KUMAR S - RA2311026010321
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