CREATE TABLE IF NOT EXISTS airports
(id INT, 
ident INT,
type STRING,
name STRING, 
latitude_deg DOUBLE,
longitude_deg DOUBLE,
elevation_ft FLOAT,
continent STRING,
iso_country STRING,
iso_region STRING,
municipality STRING,
scheduled_service STRING,
gps_code STRING,
iata_code STRING,
local_code STRING,
home_link STRING,
wikipedia_link STRING,
keywords STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' lines terminated by '\n'
STORED AS TEXTFILE
tblproperties("skip.header.line.count"="1"); 

 
