/*Ejercicio 11 => visualizar todos los cargos de los vendedores y el numero de vendedores que estan en este cargo*/

SELECT * FROM vendedores;

/*Muestreme el cargo(COUNT(id)= me los cuenta por id) de la tabla vendedores y agrupemelos y ordenelos por el id de forma descendente */
SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo ORDER BY COUNT(id) DESC ;