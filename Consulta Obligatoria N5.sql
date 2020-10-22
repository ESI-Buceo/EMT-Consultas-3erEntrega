SELECT
        DISTINCT(c.id_enfermedad) AS Id,
	e.nombre AS "Nombre de Enfermedad"
FROM
	enfermedad e
		JOIN
			compone c
				ON
					e.id = c.id_enfermedad
		JOIN genera g	
				ON
					c.id_enfermedad = g.id_enfermedad
		JOIN
			diagnostico d
				ON
					d.id = g.id_diagnostico
WHERE
	d.fecha > DATE_SUB(NOW(), INTERVAL 15 DAY)
GROUP BY
	id_diagnostico
HAVING
	COUNT(g.id_sintoma) > 3;
	

