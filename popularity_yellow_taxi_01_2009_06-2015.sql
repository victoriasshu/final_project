
SELECT 
    strftime('%H', pickup_datetime) AS hour_of_day,
    COUNT(*) AS ride_count
FROM 
    yellow_taxi_ride 
WHERE 
    pickup_datetime BETWEEN '2009-01-01' AND '2015-06-30'
GROUP BY 
    hour_of_day 
ORDER BY 
    ride_count DESC;
