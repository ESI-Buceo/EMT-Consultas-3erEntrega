SELECT 
	s.id AS Id, 
	s.nombre AS Sintoma,  
	count(id_sintoma) AS Cantidad 
FROM 
	genera g JOIN sintoma s 
	ON 
	g.id_sintoma = s.id 
GROUP BY 
	id_sintoma 
ORDER BY 
	Cantidad DESC 
LIMIT 
	10;