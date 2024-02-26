/*Ejercicio 5 = >  Mostrar todos los vendedores con su nombre y el numero de dias que llevan en el concesionario*/

SELECT * FROM vendedores;

#Muestrame la columna nombre la durefencua entre la fecha actual y la fecha_alta, en una colman de alias 'DIAS' y de la tabla vendedores
SELECT nombre, DATEDIFF(CURDATE(), fecha_alta) AS 'DIAS' FROM vendedores;