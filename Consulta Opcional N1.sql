-- Mostrar el ID y Fecha de inicio de las sesiones de chat con más de 40 mensajes

SELECT
    id,
    fecha_hora
FROM
    atiende
GROUP BY
    id_diagnostico
HAVING
    COUNT(mensaje) > 40
LIMIT 
    1;