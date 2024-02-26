/*
Ejercicio 27 => visualizar los nombres de los clientes y la cantidad de encargos realizados,
incluyendo los que no hayan realizado encargos
*/
#Inser de un clinete
INSERT INTO clientes VALUES (NULL, 5, 'Tienda Organia Inc', 'Murcia', 0, CURDATE());

SELECT c.nombre, COUNT(e.id) FROM clientes c
LEFT JOIN encargos e ON c.id = e.cliente_id
GROUP BY 1;