/*Ejercicio 4 => Sacar a todos los vendedores cuya fecha de alta sea posterior al 1 julio de 2018*/

SELECT * FROM vendedores;
#Actualizamos un dato para probar la fecha#
/*Actualizar de la tabla vendedores el campo de la fecha_alta a = '2017-04-03' cuando id = 8 */
    UPDATE vendedores SET fecha_alta= '2017-04-03' WHERE id = 8;

/*De la tabla vendedores mostrar cuando fecha_alta mayo o igual '2018-07-01 */
SELECT * FROM vendedores WHERE fecha_alta <= '2018-07-01';