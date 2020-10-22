SELECT
    DISTINCT(a.ci_persona_medico) AS Cedula,
    p.nombre AS Nombre,
    p.apellido AS Apellido,
    COUNT(DISTINCT(a.id_diagnostico)) AS "Cantidad de Chats"
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
    ci_persona_medico
ORDER BY
    COUNT(ci) DESC;


