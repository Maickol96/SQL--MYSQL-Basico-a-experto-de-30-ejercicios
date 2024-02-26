/*Ejercicio 10 => Visualizar los apellidos de los vendedores, su fecha y su numero de grupo,
  ordenados por fecha descendente, mostrar los 4 ultimos*/

  SELECT * FROM vendedores;

/*Muestreme los campos apellidos, fecha_alta, grupo_id  de la tabla vendedores, y ordenelos por fecha de manera descendente con un limite de 4*/
SELECT apellidos, fecha_alta, grupo_id FROM vendedores ORDER BY fecha_alta DESC LIMIT 4;