/*EJERCICIO 12 => Conseguir la masa salarial del consesionario anual*/

SELECT * FROM vendedores;

/*Selecioneme la columna sueldo, sumela y porgamelo en una columna nueva con alias 'MASA SALARIAL' de la tabla vendedores */
SELECT SUM(sueldo)  AS 'MASA SALARIAL' FROM vendedores;