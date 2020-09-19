-- Mostrar las 10 enfermedades mas diagnosticadas, mostrar id, nombre y cantidad (con un nombre amigable)

SELECT
    s.id AS Id,
    s.nombre AS Nombre,
    COUNT(g.id_sintoma_compone) AS Cantidad
FROM
    sintoma s
        JOIN
            compone c
                ON
                    s.id = c.id_sintoma 
        JOIN
            genera g
                ON
                    g.id_sintoma_compone = c.id_sintoma
ORDER BY
    Cantidad DESC
LIMIT 
    10;
