SELECT
    id_diagnostico,
    fecha_hora
FROM
    atiende
GROUP BY
    id_diagnostico
HAVING
    COUNT(mensaje) > 40
LIMIT 
    1;