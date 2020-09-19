-- Mostrar el ID y Nombre de Enfermedades de los últimos 15 días que hayan sido diagnosticadas, con mas de 3 síntomas

SELECT 
    id_enfermedad_compone AS Id,
    e.nombre AS "Nombre de Enfermedad"
FROM 
    enfermedad e 
        JOIN 
            compone c 
                ON 
                    e.id = c.id_enfermedad
        JOIN
            genera g 
                ON 
                    c.id_enfermedad = g.id_enfermedad_compone
        JOIN 
            diagnostico d 
                ON 
                    d.id = g.id_diagnostico 
WHERE 
    d.fecha > DATE_SUB(NOW(), INTERVAL 15 DAY) 
GROUP BY 
    id_diagnostico 
HAVING 
    COUNT(g.id_sintoma_compone) > 3;

