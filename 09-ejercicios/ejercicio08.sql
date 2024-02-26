/*Ejercicio => Visualizar todos los coches en cuyo marca exista la letra "A" y cuyo modelo empiece  por "F"*/

SELECT * FROM coches;

/*Muestreme todos lo campos la tabla coches Cuando en el campo marca LIKE-> exista la letra '%a%' y en le campo modelo exista al inicio la letra 'F%' */
SELECT * FROM coches WHERE marca LIKE'%a%' AND  modelo LIKE 'F%';