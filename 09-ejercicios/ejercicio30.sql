/*
Ejercicio 30 => Mostar los datos del vendedor con mas antiguedad dentro del concesionario
*/

SELECT *
FROM vendedores
ORDER BY fecha_alta ASC
LIMIT 1;


/*
Ejercicio 30 plus=> Obtener los coches con mas unidades vendidas
*/
SELECT *
FROM coches
WHERE id IN
      (SELECT coche_id FROM encargos WHERE cantidad IN
             (SELECT MAX(cantidad) FROM encargos));