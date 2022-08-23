SELECT pilots.name
FROM 
	pilots 
	INNER JOIN flights ON pilots.pilot_id = flights.first_pilot_id
	INNER JOIN planes ON planes.plane_id = pilots.plane_id
WHERE planes.cargo_flg = 1 AND YEAR(flights.flight_dt) = 2022
GROUP BY pilots.name
ORDER BY COUNT(pilots.name) DESC
LIMIT 10