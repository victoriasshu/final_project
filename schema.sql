CREATE TABLE weather_data (
            id INTEGER PRIMARY KEY,
            DATE DATETIME,
            LATITUDE REAL,
            LONGITUDE REAL,
            HourlyAltimeterSetting REAL,
            HourlyDewPointTemperature INTEGER,
            HourlyDryBulbTemperature INTEGER,
            HourlyPrecipitation REAL,
            HourlyPresentWeatherType TEXT, 
            HourlyPressureChange REAL,
            HourlyPressureTendency REAL,
            HourlyRelativeHumidity REAL,
            HourlySkyConditions, REAL 
            HourlySeaLevelPressure REAL,
            HourlyStationPressure REAL,
            HourlyVisibility REAL,
            HourlyWetBulbTemperature REAL,
            HourlyWindDirection REAL,
            HourlyWindGustSpeed REAL,
            HourlyWindSpeed REAL
        );
CREATE TABLE yellow_taxi_ride (
	id BIGINT, 
	trip_distance FLOAT, 
	tip_amount FLOAT, 
	total_amount FLOAT, 
	passenger_count BIGINT, 
	dropoff_latitude FLOAT, 
	dropoff_datetime DATETIME, 
	dropoff_longitude FLOAT, 
	pickup_latitude FLOAT, 
	pickup_datetime DATETIME, 
	pickup_longitude FLOAT, 
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
