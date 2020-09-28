-- Dado un ID de diagnostico, mostrar la sesión de chat (FechaHora del mensaje, emisor,receptor, contenido)

SELECT
    a.id,
    a.fecha_hora,
    p1.nombre As Paciente,
    p2.nombre As Medico,
    a.mensaje
FROM
    atiende a
        JOIN
            diagnostico d
                ON
                    a.id_diagnostico = d.id   
        JOIN
            paciente p
                ON
                    a.ci_persona_paciente = p.ci_persona
        JOIN
            persona p1
                ON
                    p.ci_persona = p1.ci
        JOIN
            medico m
                ON
                    a.ci_persona_medico = m.ci_persona
        JOIN
            persona p2
                ON
                    m.ci_persona = p2.ci
WHERE
    d.id = 18;

