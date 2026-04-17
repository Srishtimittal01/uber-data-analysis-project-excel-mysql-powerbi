use UBER;


select * from uber_bookings where Booking_Status ='completed';

select Vehicle_Type , avg(Ride_Distance) as avg_distance from uber_bookings group by Vehicle_Type;

select count(*) from uber_bookings where Booking_Status = 'Cancelled by Customer';

SELECT 
    Pickup_Location,
    COUNT(*) AS total_rides
FROM uber_bookings
GROUP BY Pickup_Location
ORDER BY total_rides DESC
LIMIT 5;


select count(*) from uber_bookings where Driver_Cancellation_Reason ='Personal & Car related issues';



SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM uber_bookings WHERE Vehicle_Type = 'Premier Sedan';

SELECT * FROM uber_bookings
WHERE Payment_Method = 'UPI';

SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM uber_bookings
GROUP BY Vehicle_Type;

SELECT SUM(Booking_Value) as total_successful_ride_value
FROM uber_bookings
WHERE Booking_Status = 'completed';

SELECT Booking_ID, Incomplete_Rides_Reason
FROM uber_bookings
WHERE Incomplete_Rides = 'Yes';






