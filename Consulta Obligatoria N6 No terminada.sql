-- Mostrar el ID, Nombre y Apellido de los usuarios que hayan tenido mas de 10 consultas los últimos 20 días, con los síntomas "Fiebre" y "Dolor de Cabeza"

SELECT
    pe.ci,
    pe.nombre,
    pe.apellido
FROM
    persona pe
        JOIN
            paciente p
                ON
                    pe.ci = p.ci_persona
        JOIN
            atiende a
                ON
                    p.ci_persona = a.ci_persona_paciente
        JOIN
            diagnostico d
                ON
                    a.id_diagnostico = d.id
        JOIN
            genera g
                ON
                    d.id = g.id_diagnostico
WHERE
    g.id_sintoma_compone = 35 AND g.id_sintoma_compone = 5
    AND
    d.fecha > DATE_SUB(NOW(), INTERVAL 20 DAY)
GROUP BY
    g.id_diagnostico
HAVING
    COUNT(g.id_diagnostico) > 10

    ;

select p.nombre, p.apellido, p.ci, COUNT(d.id) AS diagnosticos from diagnostico d JOIN genera g ON d.id = g.id_diagnostico JOIN persona p ON d.pertenece = p.ci where g.id_sintoma_compone  IN (35,5) group by d.id HAVING COUNT(DISTINCT g.id_sintoma_compone) = 2;
