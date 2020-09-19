-- Mostrar el ID, Nombre y Apellido de los médicos que mas consultas atendieron los últimos 30 días

SELECT
    ci AS Cedula,
    nombre AS Nombre,
    apellido AS Apellido
FROM 
    persona p
        JOIN
            medico m
                ON
                    p.ci = m.ci_persona
        JOIN
            atiende a
                ON
                    m.ci_persona = a.ci_persona_medico
WHERE
    a.fecha_hora > DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY
    ci
ORDER BY
    COUNT(ci) DESC;


