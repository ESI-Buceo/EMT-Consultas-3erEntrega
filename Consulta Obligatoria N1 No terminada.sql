-- Dado un ID de diagnostico, mostrar la sesión de chat (FechaHora del mensaje, emisor,receptor, contenido)

SELECT
    fecha_hora AS Enviado,
    pe.nombre AS Medico,
    p.ci_persona,
    mensaje AS Mensaje
FROM (
    atiende a
        JOIN
            medico m
                ON
                    a.ci_persona_medico = m.ci_persona
        JOIN
            paciente p
                ON
                    a.ci_persona_paciente = p.ci_persona
        JOIN   
            persona pe
                ON
                    pe.ci = m.ci_persona
WHERE
    a.id_diagnostico = 1;