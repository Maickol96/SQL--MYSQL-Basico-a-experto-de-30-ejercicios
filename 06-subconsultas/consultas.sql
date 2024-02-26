/*SUBCONSULTAS: Son consultas que se ejecutan dentro de otras
  => Consiste en utilizar los resultados de la sub consulta
  para operar en la consulta principal*
    => Jugando con la claves ajenas / foraneas
 */
 SELECT * FROM usuarios;

 INSERT INTO usuarios VALUES (NULL, 'Admin', 'Admin', 'admin@admin.com', 'admin', CURDATE());


/*
Sacar un listado de usuarios que tengan entradas creadas
IN => Significa que ID EXISTE EN, o que cuando se realise la consulta existan multiples resulatados,
*/
#De la tabla "usuarios" muestreme los ID, que existan en USUARIOS_ID de la tabla "entradas"
SELECT * FROM usuarios WHERE id IN (SELECT usuarios_id FROM entradas);


/*
NOT IN => Significa que no existan
#De la tabla "usuarios" muestreme los ID, que no existan en USUARIOS_ID de la tabla "entradas"
*/
SELECT * FROM usuarios WHERE id NOT IN (SELECT usuarios_id FROM entradas);


/*
Ingresamos datos a la tabla entradas
*/
INSERT INTO entradas VALUES (NULL, 3, 1, 'Guia de GTA Vice City', 'GTA', CURDATE());


#Sacar los usuarios que tengan una entrada que en nsu titulo hable de GTA 5
/*Sacame los nombres y los apellidos de la tabla usuarios, siempre y cuando se cumpla la siguiente condicion
que USUARIO_ID exista dentro de la tabla entradas y la columna titulo tenga la palabra GTA*/
SELECT  nombre, apellidos FROM usuarios WHERE id
    IN(SELECT usuarios_id FROM entradas WHERE titulo LIKE "%GTA%");



/*EJERCICIO 1:
        Sacar todas la entradas de la categoria accion utilizando su nombre
Sacame el titulo de todas la entradas cuya categoria id este contenida en la tabla de categorias
  cuando esta categoria se llame accion*/

    SELECT categoria_id, titulo FROM entradas WHERE categoria_id
        IN(SELECT id FROM categorias WHERE nombre ="Accion");


/*
EJERCICIO 2: Mostrar las categorias con mas de 3 o mas entradas
Sacar los nombres de la tabla categorias cuando ID exista
CATEGORIAS_ID de la tabla entradas y agrupelos por CATEGORIA_ID
*/
    SELECT nombre FROM categorias WHERE id IN
                                        (SELECT categoria_id  FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id) >= 3);



#EJERCICIO 3:Mostrar los usuarios que crearon una entrada un martes

    SELECT * FROM usuarios WHERE id IN
                           (SELECT usuarios_id, titulo FROM entradas WHERE DAYOFWEEK(fecha)=5);


#Mostrar el nombre de el usuarios que tenga mas entradas
/*Mostrar el NOMBRE de la tabla "usuarios" SI el ID del usuario
                                {sub consulta} =>  */
    SELECT CONCAT(nombre,' ',apellidos) AS 'El usuario con mas entradas ' FROM usuarios WHERE id =
                                (SELECT usuarios_id FROM entradas GROUP BY usuarios_id ORDER BY COUNT(id) DESC LIMIT 1);


#Mostrar las categorias sin entradas
#Insertammos una categoria a la tabla categorias
INSERT INTO categorias VALUES (NULL, 'Plataformas');

SELECT * FROM categorias WHERE  id
                        NOT IN (SELECT categoria_id FROM entradas);