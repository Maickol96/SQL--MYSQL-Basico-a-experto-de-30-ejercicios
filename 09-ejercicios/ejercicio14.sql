/*Ejercicio = > Visializar las unidades totales vendidas de cada coche a cada cliente, mostrando el nombre del producto, el numero de cliente y la suma de unidades*/

SELECT * FROM clientes;

SELECT modelo AS'COCHE', nombre AS'CLIENTE', SUM(e.cantidad) AS'UNIDADES' FROM encargos e
INNER JOIN coches c ON c.id = e.coche_id
INNER JOIN clientes cl ON cl.id = e.cliente_id
GROUP BY  e.coche_id, e.cliente_id;