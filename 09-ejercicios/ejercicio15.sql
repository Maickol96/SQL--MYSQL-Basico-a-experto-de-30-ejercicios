/*Ejercicio = >Mostrar los clientes que mas pedidos an echo y mostrar cuantos hicieron
  */


/*seleccioneme y muestreme la columna liente_id, COUNT(id) de la tabla encargos y agrupelo por cliente_id y y ordenelo de 2 de manera decendente con un limite de dos campos*/
  SELECT cliente_id, COUNT(id) FROM encargos GROUP BY cliente_id ORDER BY 2 DESC LIMIT 2;

/*CONSULTA MULTITABLA*/
SELECT c.nombre, COUNT(e.id) FROM encargos e
INNER JOIN clientes c ON c.id = e.cliente_id
GROUP BY cliente_id ORDER BY 2 DESC LIMIT 2;