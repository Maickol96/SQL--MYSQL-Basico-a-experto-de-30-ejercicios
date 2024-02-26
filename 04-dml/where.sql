/*CONSULTA CON UNA CONDICION
  Sacame todos los usuarios mientras que se cumpla la siguiente condicion  WHERE email = 'maickol@velasco.com' */
SELECT * FROM usuarios WHERE email = 'maickol@velasco.com';

/*
Igual          -> =
Distinto       -> !=
Menor          -> <
Mayor          -> >
Menor igual    -> <=
Mayor igual    -> >=
Entre          -> between A and B
En             -> in
Es nulo        -> is null
No nulo        -> is no null
Como           -> like
No es como     -> nor like
*/
#EJEMPLO 1#
#Mostrar nombre y apellidos de todos los usuarios registrados en 20245#
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = 2045;


#Mostrar los usuarios que no se registraron en 2024#
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2045;




#Mostrar los usuarios que no se registraron en 2024 o la fecha se null#
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2024 OR ISNULL(fecha);

/*OPERADORES LOGICOS SQL
O  ->OR
Y  -> AND
NO -> NOT */

/*COMODINES
Cualquier cantidad de caracteres -> %
Un caracter desconocido => _*/

#EJEMPLO 2
# Una consulta dentro de la tabla usuarios mostrar email cuyo  apellido contenga la letra a  y que su password sea 1234#
#LIKE => Contenga#
SELECT email  FROM usuarios WHERE apellidos LIKE '%a%' AND password = '1234';


#EJEMPLO 3#
#Sacar todos los registros de la tabla usuarios cuyo anio sea par#
#Muestrame todos los usuarios si se cumple que la fecha dividido en 2 el resto sea 0#
SELECT * FROM usuarios WHERE (YEAR(fecha)%2 = 0)

/*EJEMPLO 4
  Sacar todos los registros de la tabla de usuarios, cuyo nombre tenga mas de 4 letras y que se hayan registrado antes 2045
  y mostrar nombre en mayuscula
  LENGTH me muestra cuenta todos los caracteres*/

SELECT UPPER(nombre), apellidos FROM usuarios WHERE (LENGTH(nombre) > 4) AND (YEAR(fecha) < 2045);


/* ORDER BY
   Me sirve para ordenar los datos*/
SELECT * FROM usuarios ORDER BY id ASC;
SELECT * FROM usuarios ORDER BY id DESC;

#ORDEN POR FECHA#
SELECT * FROM usuarios ORDER BY fecha DESC;
SELECT * FROM usuarios ORDER BY fecha ASC;


/*LIMIT
  Lo que permite es que si la utilizo y le pongo un numero a ese numero me limita los registros que consulto*/
  SELECT * FROM  usuarios LIMIT 2;
#Tambien puedo sacar un bloque de 1 a 4#
  SELECT * FROM  usuarios LIMIT 1,4;