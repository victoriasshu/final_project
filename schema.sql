CREATE TABLE yellow_taxi_ride (
	id BIGINT, 
	total_amount FLOAT, 
	trip_distance FLOAT, 
	tip_amount FLOAT, 
	passenger_count BIGINT, 
	dropoff_latitude FLOAT, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	pickup_datetime DATETIME, 
	dropoff_longitude FLOAT, 
	dropoff_datetime DATETIME, 
	"distance_PD" FLOAT
);
CREATE TABLE uber_rides (
	id BIGINT, 
	fare_amount FLOAT, 
	pickup_datetime TIMESTAMP, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	passenger_count BIGINT, 
	"distance_PD" FLOAT
);
CREATE TABLE hourly_weather_data (
	id BIGINT, 
	"DATE" DATETIME, 
	"HourlyPrecipitation" FLOAT, 
	"HourlyWindSpeed" FLOAT
);
CREATE TABLE daily_weather_data (
	id BIGINT, 
	"DATE" DATETIME, 
	"DailyAverageWindSpeed" FLOAT, 
	"DailyPeakWindSpeed" FLOAT, 
	"DailySustainedWindSpeed" FLOAT, 
	"DailyPrecipitation" FLOAT
);
CREATE TABLE sunrise_sunset_data (
	id BIGINT, 
	"DATE" DATETIME, 
	"Sunrise" FLOAT, 
	"Sunset" FLOAT, 
	"DailyAverageWindSpeed" FLOAT, 
	"DailyPeakWindSpeed" FLOAT, 
	"DailySustainedWindSpeed" FLOAT, 
	"DailyPrecipitation" FLOAT
);
