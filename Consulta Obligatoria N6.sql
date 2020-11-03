SELECT
	p.ci AS Cedula,
	p.nombre AS Nombre,
	p.apellido AS Apellido,
	COUNT(DISTINCT(d.id)) As conteo
FROM 
	persona p 
		JOIN diagnostico d
		ON p.ci = d.pertenece
			JOIN genera g
			ON d.id = g.id_diagnostico
WHERE 
	id_sintoma IN (5, 35)
	AND
	d.fecha >= NOW() - INTERVAL 20 DAY
HAVING 
	conteo > 10;