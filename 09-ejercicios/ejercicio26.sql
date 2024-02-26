/*
Ejercicio 26 => Sacar vendedores que tiene jefe y sacar el nombre del jefe
*/

SELECT * FROM vendedores;
SELECT CONCAT(v1.nombre, ' ', v1.apellidos) AS'VENDEDOR', CONCAT(v2.nombre, v2.apellidos) AS'JEFE' FROM vendedores v1
INNER JOIN vendedores v2 ON v1.jefe = v2.id;