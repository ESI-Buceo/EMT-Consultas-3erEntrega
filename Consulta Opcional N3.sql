-- Mostrar el ID de las enfermedades que no se hayan diagnosticado nunca.

SELECT 
    e.id 
FROM 
    enfermedad e
        LEFT OUTER JOIN 
            genera g 
                ON 
                    e.id = g.id_enfermedad_compone 
WHERE 
    g.id_enfermedad_compone IS NULL;