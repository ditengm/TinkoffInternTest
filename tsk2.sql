SELECT DISTINCT pilots.name
FROM 
	pilots 
	INNER JOIN flights ON pilots.pilot_id = flights.first_pilot_id
	INNER JOIN flights ON pilots.pilot_id = flights.second_pilot_id
	INNER JOIN planes ON planes.plane_id = pilots.plane_id
WHERE pilots.age > 45 AND planes.cargo_flg = 0 AND planes.capacity > 30