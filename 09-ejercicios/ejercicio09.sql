/*Ejercicio 9 => Mostrar todos los vendedores del grupo numero 2 ordenados por salaraio de menor a mayor*/

/*Muestreme todos los datos de la tabla vendedores si grupo_id = 2 y ordenarlos por sueldo de manera descendente */
SELECT * FROM vendedores WHERE grupo_id = 2 ORDER BY sueldo DESC;