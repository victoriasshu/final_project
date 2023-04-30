
SELECT 
    strftime('%w', pickup_datetime) AS day_of_week,
    COUNT(*) AS ride_count
FROM 
    uber_rides
WHERE 
    pickup_datetime BETWEEN '2009-01-01' AND '2015-06-30'
GROUP BY 
    day_of_week 
ORDER BY 
    ride_count DESC;
