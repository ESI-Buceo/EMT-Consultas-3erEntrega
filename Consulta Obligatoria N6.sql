- Mostrar el ID, Nombre y Apellido de los usuarios que hayan tenido mas de 10 consultas los últimos 20 días, con los síntomas "Fiebre" y "Dolor de Cabeza"

SELECT
	p.ci,
	p.nombre,
	p.apellido
FROM
	persona p
	JOIN
	diagnostico d
	ON d.pertenece = p.ci
	JOIN
	genera g
	ON g.id_diagnostico = d.id
WHERE
	d.fecha > DATE_SUB(NOW(), INTERVAL 20 DAY)
	AND
	g.id_sintoma IN ("Fiebre", "Dolor de Cabeza")
GROUP BY
	ci
HAVING
	COUNT() > 10;

