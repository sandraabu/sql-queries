SELECT start_station_id, 
	COUNT(start_station_id) AS total_starts, 
	count(*) * 100.0 / (SELECT count(*) from citibike_2019) as PERCENTAGE,
	CONCAT(ROUND(COUNT(start_station_id)/ SUM(COUNT(start_station_id)) OVER() *100), '%') AS percent
FROM citibike_2019
GROUP BY start_station_id
ORDER BY COUNT(start_station_id) DESC;