SELECT pilots.name
FROM 
	pilots 
	INNER JOIN flights ON pilots.pilot_id = flights.second_pilot_id
WHERE YEAR(flights.flight_dt) = 2022 AND MONTH(flights.flight_dt) = 8 AND flights.destination = 'Шереметьево'
GROUP BY pilots.name
HAVING COUNT(name) = 3