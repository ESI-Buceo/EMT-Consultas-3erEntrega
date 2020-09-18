-- Mostrar el id, y nombre de los síntomas que nunca fueron seleccionados para diagnostico

SELECT 
    s.id 
FROM 
    sintoma s 
        LEFT OUTER JOIN 
            genera g 
                ON 
                    s.id = g.id_sintoma_compone 
WHERE 
    g.id_sintoma_compone IS NULL;