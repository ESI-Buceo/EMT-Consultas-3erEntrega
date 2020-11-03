SELECT 
    e.id 
FROM 
    enfermedad e
        LEFT OUTER JOIN 
            genera g 
                ON 
                    e.id = g.id_enfermedad
WHERE 
    g.id_enfermedad IS NULL;