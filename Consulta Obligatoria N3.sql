SELECT 
    s.id AS Id 
FROM 
    sintoma s 
        LEFT OUTER JOIN 
            genera g 
                ON 
                    s.id = g.id_sintoma
WHERE 
    g.id_sintoma IS NULL
ORDER BY
	s.id ASC;