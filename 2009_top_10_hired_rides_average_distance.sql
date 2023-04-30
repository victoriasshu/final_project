
SELECT
    date(date_time) AS date,
    SUM(num_rides) AS num_rides,
    AVG(avg_distance) AS avg_distance
FROM
    (
    SELECT
        dropoff_datetime AS date_time,
        1 AS num_rides,
        trip_distance AS avg_distance
    FROM
        yellow_taxi_ride
    WHERE
        strftime('%Y-%m', dropoff_datetime) BETWEEN '2009-01' AND '2009-06'
    
    UNION ALL
    
    SELECT
        pickup_datetime AS date_time,
        1 AS num_rides,
        distance_PD AS avg_distance
    FROM
        uber_rides
    WHERE
        strftime('%Y-%m', pickup_datetime) BETWEEN '2009-01' AND '2009-06'
    ) AS hired_rides
GROUP BY
    date
ORDER BY
    num_rides DESC
LIMIT
    10;
