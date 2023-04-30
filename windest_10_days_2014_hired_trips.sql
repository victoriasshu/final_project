
SELECT date, avg_wind_speed, SUM(hired_trips + total_rides) AS total_trips
FROM (
    SELECT d.date, d.DailyAverageWindSpeed AS avg_wind_speed, COUNT(y.id) AS hired_trips, 0 AS total_rides
    FROM daily_weather_data d
    JOIN uber_rides y ON DATE(d.date) = DATE(y.pickup_datetime)
    WHERE strftime('%Y', d.date) = '2014'
    GROUP BY d.date

    UNION ALL

    SELECT d.date, d.DailyAverageWindSpeed AS avg_wind_speed, 0 AS hired_trips, COUNT(y.id) AS total_rides
    FROM daily_weather_data d
    JOIN yellow_taxi_ride y ON DATE(d.date) = DATE(y.pickup_datetime)
    WHERE strftime('%Y', d.date) = '2014'
    GROUP BY d.date
)
GROUP BY date
ORDER BY avg_wind_speed DESC
LIMIT 10;
