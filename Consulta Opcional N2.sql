SELECT
    p.ci,
    p.nombre,
    p.apellido
FROM
    medico m
        LEFT OUTER JOIN
            atiende a
                ON 
                    a.ci_persona_medico = m.ci_persona
        JOIN
            persona p
                ON
                    m.ci_persona = p.ci
WHERE a.ci_persona_medico IS NULL;

