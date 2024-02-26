/*Ejercicio 13=> Sacar la media de sueldos entre todos los vendedores por grupos*/

SELECT * FROM vendedores;

/*AVG(Para sacar la media)
Muestreme de la media de la columna sueldo y el grupo?id de la tabla vendedores y agrupelos por grupo_id
  */
SELECT AVG(v.sueldo)AS 'Media salarial', g.nombre, g.ciudad FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id;