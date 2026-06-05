# 	SANJAY KUMAR S - RA2311026010321
use unox_hackathon;
show tables;
select * from booking;
select * from payment;
-- M7. Find the Customers Who Have Made the Most Spending
select u.user_id,u.name,SUM(p.transaction_amount) as total_spent from unox_hackathon.user u 
JOIN booking b ON u.user_id=b.user_id
JOIN payment p ON b.booking_id=p.booking_id
WHERE p.status='Success' 
group by u.user_id,u.name order by total_spent DESC;
-- M8. Find the most popular show times
select * from booking;
select * from unox_hackathon.show;
select s.show_id,s.show_datetime,COUNT(b.booking_id) as total_booking from unox_hackathon.show s
JOIN booking b on s.show_id=b.show_id
group by s.show_datetime,s.show_id order by total_booking DESC;