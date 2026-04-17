use UBER;

-- 1.Retrieve all successful bookings:
select * from uber_bookings where Booking_Status ='completed';

-- 2. Find the average ride distance for each vehicle type: 
select Vehicle_Type , avg(Ride_Distance) as avg_distance from uber_bookings group by Vehicle_Type;

-- 3.Get the total number of cancelled rides by customers: 
select count(*) from uber_bookings where Booking_Status = 'Cancelled by Customer';

-- 4.List the top 5 Pickup locations with the highest number of rides:
SELECT 
    Pickup_Location,
    COUNT(*) AS total_rides
FROM uber_bookings
GROUP BY Pickup_Location
ORDER BY total_rides DESC
LIMIT 5;

-- 5.Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from uber_bookings where Driver_Cancellation_Reason ='Personal & Car related issues';


-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM uber_bookings WHERE Vehicle_Type = 'Premier Sedan';

--7.Retrieve all rides where payment was made using UPI: 
SELECT * FROM uber_bookings
WHERE Payment_Method = 'UPI';

-- 8.Find the average customer rating per vehicle type: 
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM uber_bookings
GROUP BY Vehicle_Type;

-- 9.Calculate the total booking value of rides completed successfully: 
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM uber_bookings
WHERE Booking_Status = 'completed';

-- 10.List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason
FROM uber_bookings
WHERE Incomplete_Rides = 'Yes';






