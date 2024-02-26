/*Mostrar todos los registros de una tabla*/

/*para ver los datos espesificos de una tabla*/
SELECT email, nombre,apellidos FROM usuarios;


/*Para ver todos los datos de la tabla*/
SELECT * FROM usuarios;


/*OPERADORES ARITMETICOS*/
/*PARA HACER UNA OPERACION=> del campo email se hace la suma y se muestra en la columna AS 'operacion'*/
/*SELECT dato, (operacion) AS 'columna_resultado' FROM tabla;*/
SELECT email, (4 +7) AS 'OPERACION' FROM usuarios;


/*Se agrega el campo id, y las sentencia ORDER BY=> ordenar, y se le pasa el dato que quiero ordenar(id)
  y esto me lo ordena de la manera ascendente, si quiero que sea de manera descendente agrego al final la sentecia DEC*/
SELECT id, email, (4 +7) AS 'OPERACION' FROM usuarios ORDER BY  id DESC;


/*OPERARCION USANDO LA COLUMNA*/
/*Para hacer una operacion usando el dato de la columna, se pone el dato numero y seguido la operacion*/
SELECT id,email, (id + 9) AS 'OPERACION' FROM usuarios;

/*FUNCIONES MATEMATICAS*/
/*Me muestra el valor Absoluto del numero que le indiquemos => ABD(7)*/
SELECT ABS(7) AS 'OPERADOR' FROM usuarios;


/*Me muestra el valor redondeado del numero que le indiquemos=> CEIL(7.88) = 8*/
SELECT CEIL(7.88) AS'OPERATION' FROM usuarios;


/*Sql funtions math => buscar en google ta da la doumentacion de muchas funciones mas*/

/*---------------------------------------------------------------------------------------------------------------------------------*/

/*FUNCIONES PARA TEXTOS*/
/*Para que me muestre todos los textos en mayusculas*/
SELECT UPPER(nombre) FROM usuarios;


/*LOWER texto en minuscule*/
SELECT LOWER(nombre) FROM usuarios;


/*CONTACT para concatenate, me muestra el nombre y apellido seguidos*/
/*AS=> con el que hacemos es decirle a SQL que nos muestre la operacion en una nueva columna,
  esa nueva columna la indicamos despues del AS entre comillas */
SELECT CONCAT(nombre, ' ', apellidos) AS 'CONVERSION' FROM usuarios;


/*METER UNA FUNCION DENTRO DE OTRA*/
/*Lo que realizamos fue:UPPER(CONCAT()) => decirle que nos concatenar el dato nombre con el dato email
  y nos muestre el texto en mayusculas*/
SELECT UPPER(CONCAT(nombre,'=>', email))  AS 'OPERACION' FROM usuarios;


/*LENGTH =>me permite sacar la cantidad de caracteres de ese texto*/
SELECT nombre, LENGTH(CONCAT(nombre,'=>', email))  AS 'OPERACION' FROM usuarios;


/*TRIM()=> Limpiar los espacios de la derecha y de la izquierda*/
SELECT TRIM(CONCAT('    ',nombre,'=>',email,'      ')) AS 'OPERACION' FROM usuarios;

/*-----------------------------------------------------------------------------------------------------------------------------------*/
/*FUNCIONES PARA FECHAS*/

/*Para mostrar las fechas y el campo de email de la tabla usuarios*/
SELECT email, fecha FROM usuarios;

/*CURDATE => Mostrarme la fecha actual*/
SELECT email, fecha, CURDATE() AS 'FECHA_ACTUAL' FROM usuarios;


/*DATEIFF*/
/*DATEDIFF-> Me da los dias de diferencia entre la fecha que registramos y la fecha actual que nos da CURDATE*/
SELECT email, DATEDIFF( fecha, CURDATE()) AS 'FECHA_ACTUAL' FROM usuarios;

/*DAYNAME*/
/*me da el nombre del dia*/
SELECT email, DAYNAME(fecha) FROM usuarios;


/*DAYOFMONTH*/
/*Muestra los dias del mes en el cual se añadio el registro*/

SELECT email, fecha, DAYOFMONTH(fecha) AS 'REGISTRO_EL_DIA' FROM usuarios;


/*DAYOFWEEK*/
/*Muestra los dias de la semana en el cual se añadio el registro*/
SELECT email, fecha, DAYOFWEEK(fecha) AS 'REGISTRO_EL_DIA' FROM usuarios;


/*DAYOFYEAR*/
/*Muestra los dias del anio en el cual se añadio el registro*/
SELECT email, fecha, DAYOFYEAR(fecha) AS 'REGISTRO_EL_DIA' FROM usuarios;


/*YEAR*/
/*Muestra el anio de la fecha*/
SELECT email, fecha, YEAR(fecha) AS 'ANIO' FROM usuarios;

/*MONTH*/
/*Muestra el mes de la fecha*/
SELECT email, fecha, MONTH(fecha) AS 'MES' FROM usuarios;


/*WEEK*/
/*Muestra el semana de la fecha*/
SELECT email, fecha, WEEK(fecha) AS 'N_SEMANA' FROM usuarios;


/*DAY
Muestra el dia de la fecha*/
SELECT email, fecha, DAY(fecha) AS 'ANIO' FROM usuarios;


/*HOUR*/
/*Muestra el hora de la fecha*/
SELECT email, fecha, HOUR(fecha) AS 'HORA' FROM usuarios;


/*CURTIME
  Me pertime tomar la hora actual, en la que se ejecute el comando*/
SELECT email, fecha, CURTIME() AS 'HORA_ACTUAL' FROM usuarios;


/*SYSDATE
Me saca ala hora complete del sistema operativo*/
SELECT email, fecha, SYSDATE() AS 'HORA_COMPLETA' FROM usuarios;


/*DATEFORMAT
Devolver la fecha en otro formato que le pasemos y que no sea americano*/

SELECT email, DATE_FORMAT(fecha, '%d-%m-%Y') FROM usuarios;


/*ISNULL
  Me devuelve true->1 o false-> 0 en caso del que el apellido sea null*/
SELECT email, ISNULL(apellidos) FROM usuarios;


/*STRCMP
Comprobar si dos campos son iguales*/
SELECT email, STRCMP('HOLA','HOLA') FROM usuarios;


/*Me da version de SQL que tengo*/
SELECT VERSION() FROM usuarios;


/*Me permite sacar el usuario a nivel de SGBD, es decir el usuario con el que me identifique en MySQL
 */
 SELECT USER() FROM usuarios;


/*Me saca los registros que sean diferentes, para cuando no me recorra la tabla y existan muchos datos iguales no se me repita*/
SELECT DISTINCT USER() FROM usuarios;

/*DATABASE
  Nombre de la base de datos ques estoy usando en este momento*/
  SELECT DISTINCT DATABASE() FROM usuarios;

/*IFNULL
  Me sirve para indicar a un dato que venga null, ponder un mensaje*/
SELECT email, IFNULL(apellidos, 'ESTE CAMPO ESTA VACIO') FROM usuarios;