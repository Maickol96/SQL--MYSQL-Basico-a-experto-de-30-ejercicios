/*Ejercicio 19 = > Obtener los vendedores con 2 o mas clientes*/

SELECT * FROM vendedores;

SELECT * FROM vendedores WHERE id
  #Me saca todos los vendedores que tienen clientes # HAVING=> para agregar un condicion
    IN (SELECT vendedor_id FROM clientes GROUP BY vendedor_id HAVING COUNT(id) >=2) ;