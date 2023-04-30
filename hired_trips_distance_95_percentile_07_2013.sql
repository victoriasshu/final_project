
SELECT CAST((SELECT distance_PD
             FROM (
               SELECT distance_PD, NTILE(100) OVER (ORDER BY distance_PD) AS percentile
               FROM (
                 SELECT distance_PD FROM yellow_taxi_ride WHERE pickup_datetime BETWEEN '2013-07-01' AND '2013-07-31'
                 UNION ALL
                 SELECT distance_PD FROM uber_rides WHERE pickup_datetime BETWEEN '2013-07-01' AND '2013-07-31'
               ) AS hired_trips
             )
             WHERE percentile = 95
             LIMIT 1) AS REAL) AS percentile_95;
