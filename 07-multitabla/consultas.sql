/*Consultas que sirven para consultar varias tablas en una sola consulta*/
#Mostrar las entradas con el nombre del autor y nombre de la categoria#
SELECT entradas.titulo, usuarios.nombre, categorias.nombre
    FROM entradas, usuarios, categorias;
/*
Se le puede poner alias a los  a las tablas para despues llamarlas y reducir el codigo
*/

/*
de la tabla "Entrada" seleccione la columna titulo, de la tabla "usuarios" seleccione la columna nombre y de la tabla "categoria" seleccione la columna nombre
y muestreme los datos de la columna titulo .e,nombre.u y nombre.c
si en la tabla entrada USUARIO_ID = ID de la tabla "usuario" Y la tabla entrada CATEGORIA_ID es igual ID ed la tabla categoria
=> muestreme los datos.
*/
SELECT e.id, e.titulo, u.nombre AS'Autor', c.nombre AS 'Categoria'
FROM entradas e, usuarios u, categorias c
WHERE e.usuarios_id = u.id AND e.categoria_id = c.id;


/*EJEMPLO 2 : Mostrar el nombre de las categorias y al lado cuantas entradas tienen*/
    SELECT c.nombre, COUNT(e.id) FROM categorias c, entradas e
    WHERE e.categoria_id = c.id GROUP BY e.categoria_id;


/*EJEMPLO 3 : Mostrar el email de los usuarios y al lado cuantas entradas tienen*/

SELECT u.email AS 'email usuario', COUNT(e.id) AS 'Numero de entradas' FROM usuarios u, entradas e
WHERE e.categoria_id = u.id GROUP BY e.categoria_id;

/*---------------------------------------------------------------------------------------------------------------------------------*/
/*EJEMPLO CON JOIN
=> Mostrar las entradas con el nombre del autor y el nombre de la categoria
  INNER JOIN=> se encarga de mezclar los datos unicamente necesarios, es mas eficiente que el ejemplo anterior
*/
/*Nos saca el nombre del usuario que ha echo esa entrada*/
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria'
FROM entradas e
INNER JOIN usuarios u ON e.usuarios_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

/*----------------------------------------------------------------------------------------------------------------------------------*/
/*EJEMPLO 2 : Mostrar el nombre de las categorias y al lado cuantas entradas tienen
LEFT JOIN
  */
SELECT c.nombre, COUNT(e.id) FROM categorias c
LEFT JOIN entradas e ON e.categoria_id= c.id
GROUP BY e.categoria_id;

/*lo que hay a la derecha se muestre todas sus filas */

SELECT c.nombre, COUNT(e.id) FROM entradas e
RIGHT JOIN categorias c ON e.categoria_id= c.id
GROUP BY e.categoria_id;