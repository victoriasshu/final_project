
WITH total_hired_trips AS 
(
    SELECT strftime('%Y-%m-%d %H:00:00', pickup_datetime) AS date_hour_time FROM uber_rides
    WHERE strftime('%Y-%m-%d', pickup_datetime) BETWEEN '2012-10-22' AND '2012-11-07'
    
    UNION ALL
    
    SELECT strftime('%Y-%m-%d %H:00:00', pickup_datetime) AS date_hour_time FROM yellow_taxi_ride
    WHERE strftime('%Y-%m-%d', pickup_datetime) BETWEEN '2012-10-22' AND '2012-11-07'
)

SELECT strftime('%Y-%m-%d %H:00:00', hourly_weather_data.DATE) AS weather_date_hour, COUNT(*) AS number_hired_rides, SUM(HourlyPrecipitation) AS total_precipitation, AVG(HourlyWindSpeed) AS average_wind_speed
FROM hourly_weather_data
JOIN total_hired_trips ON weather_date_hour = total_hired_trips.date_hour_time
WHERE strftime('%Y-%m-%d', hourly_weather_data.DATE) BETWEEN '2012-10-22' AND '2012-11-07'
GROUP BY weather_date_hour
ORDER BY weather_date_hour
