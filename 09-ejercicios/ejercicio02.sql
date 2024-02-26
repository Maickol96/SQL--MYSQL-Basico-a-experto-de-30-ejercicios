/*
Ejercicio 2 =>Modificar la comision de los vendedores y ponerla al 2% cuando
ganan mas de 50000
*/

SELECT * FROM vendedores;

/*Actualizar en la tabla vendedores  la columna comision a 0.5 cuando sueldo sea mayor  a 50000  */
UPDATE vendedores SET comision = 0.5 WHERE sueldo >= 50000;

