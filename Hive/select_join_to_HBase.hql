select concat(f.tstamp, f.id_airport, f.dt) as id, f.id_airport,f.dt, f.tstamp, f.temp,f.weather_description,f.wind_speed,f.pop,a.name,a.latitude_deg,a.longitude_deg from (SELECT * FROM (SELECT * FROM forecasts WHERE month=from_unixtime(unix_timestamp(), "MM-YYYY")) h WHERE h.tstamp > (unix_timestamp() - (10 * 60 * 100))) f join airports a on f.id_airport = a.id
