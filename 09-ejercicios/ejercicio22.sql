/*
Ejercicio 22 => Mostrar el listado de clientes (numero de clientes y el nombre)
mostrar tambien el numero verdadero y su nombre
*/

SELECT c.id, c.nombre, v.id ,CONCAT(v.nombre,' ', v.apellidos) AS 'VENDEDOR'
FROM clientes c, vendedores v
WHERE c.vendedor_id = v.id;