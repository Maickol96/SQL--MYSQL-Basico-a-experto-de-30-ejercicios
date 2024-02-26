# Consultas de agrupamiento #
/**/
    SELECT titulo FROM entradas GROUP BY categoria_id;


/*COUNT
  Me permite ver cuantas entradas de una categoria tengo*/
  SELECT COUNT(titulo) AS 'Numero entradas', categoria_id FROM entradas GROUP BY categoria_id;


/*CONSULTA DE AGRUPAMIENTO CON CONDICIONES*/
/*Quiero que me saque los agrupamiento mayores a 4
  HAVING funciona igual que el WHERE, pero se usa en consultas de agrupamiento*/
SELECT COUNT(titulo) AS 'Numero entradas', categoria_id
FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) >= 2;

/*AVG   -> Permite sacar la media
  COUNT -> contar el numero de elementos
  MAX   -> Valor maximo del grupo
  MIN   ->Valor minimo de grupo*/

SELECT *FROM entradas;
#Para sacar la media de las entradas, suma todos los id y los divide en 9 o numeros de id #
SELECT AVG(id) AS 'Media de entradas' FROM entradas;


#MAX
#Para sacar el valor mas grande, en este caso solicitamos el valor maximo del id de la columna titulo
SELECT MAX(id) AS 'MAXIMO ID', titulo FROM entradas;


#MIN
#Para sacar el valor mas pequenio, en este caso solicitamos el valor maximo del id de la columna titulo
SELECT MIN(id) AS 'MAXIMO ID', titulo FROM entradas;


#SUM
SELECT AVG(id) AS 'Media de entradas' FROM entradas;
SELECT MAX(id) AS 'MAXIMO ID', titulo FROM entradas;
SELECT SUM(id) AS 'SUMA DE ID', titulo FROM entradas;
