/*Ejercicio 7 => Mostrar el nombre y el salario de los vendedores con cargo de 'Aydante de tienda'*/
SELECT * FROM vendedores;

/*Seleccione y muestre la columna nombre y sueldo, de la tabla vendedores  cuando el campo en la columna cargo sea igual a 'Ayudante tienda'*/
SELECT nombre, sueldo FROM vendedores WHERE cargo = 'Ayudante tienda';