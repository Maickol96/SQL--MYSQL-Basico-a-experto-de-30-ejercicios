/*EJERCICIO 6=> Visualizar el nombre y los apellidos de los vendedores en una misma columna y los dia de la semana en que se registraron*/

SELECT * FROM vendedores;

/*Seleccione y concatene nombre y apellidos y pongalemo el una columna que se llame nombre y apellidos y tambien la fecha_alta, y el dia la tabla vendedores */
SELECT CONCAT(nombre, ' ', apellidos) AS 'nombre y apellidos', fecha_alta, DAYNAME(fecha_alta) FROM vendedores;