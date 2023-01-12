DROP TABLE IF EXISTS forecasts;

CREATE TABLE IF NOT EXISTS forecasts
(id_airport INT, 
tstamp BIGINT,
dt BIGINT,
temp FLOAT,
feels_like FLOAT,
temp_min FLOAT,
temp_max FLOAT,
pressure SMALLINT,
sea_level SMALLINT,
grnd_level SMALLINT,
humidity TINYINT,
weather_id INT,
weather_main STRING,
weather_description STRING,
weather_icon STRING,
clouds TINYINT,
wind_speed FLOAT,
wind_deg SMALLINT,
wind_gust FLOAT,
vis SMALLINT,
snow3h FLOAT,
rain3h FLOAT,
pop FLOAT,
pod CHAR(1)
) PARTITIONED BY(month string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' lines terminated by '\n'
STORED AS PARQUET;

DROP TABLE IF EXISTS forecasts_staging;

CREATE TABLE IF NOT EXISTS forecasts_staging
(id_airport INT, 
tstamp BIGINT,
dt BIGINT,
temp FLOAT,
feels_like FLOAT,
temp_min FLOAT,
temp_max FLOAT,
pressure SMALLINT,
sea_level SMALLINT,
grnd_level SMALLINT,
humidity TINYINT,
weather_id INT,
weather_main STRING,
weather_description STRING,
weather_icon STRING,
clouds TINYINT,
wind_speed FLOAT,
wind_deg SMALLINT,
wind_gust FLOAT,
vis SMALLINT,
snow3h FLOAT,
rain3h FLOAT,
pop FLOAT,
pod CHAR(1),
month STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' lines terminated by '\n'
STORED AS TEXTFILE;
