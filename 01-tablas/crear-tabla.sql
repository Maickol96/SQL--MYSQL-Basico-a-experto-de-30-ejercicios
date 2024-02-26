/*
int (n. cifras)                   => ENTERO
integer (n. cifras)               => ENTERO (maximo 1245786932)
varchar (n. caracteres)           => STRING / ALFANUMERICOS
char (n. caracteres)              => STRING / ALFANUMERICOS
float (n. cifras, n. decimales)  => DECIMAL/ FLOTANTE
date, time, timestamp

//STRING MAS GRANDE
TEXT 65535 caracteres
MEDIUMTEXT 16 millones
LONGTEXT 4 billones de caracteres

//ENTEROS MAS GRANDES
MEDIUMINT
BIGINT

CREAR UNA TABLA
1. => Se agrega restricciones de integridad despues de tipo de datos:
2. not null -> dato no puede estar vacio
3. null -> pude ser vacio
4. defaal -> lo asignamos un valor fijo.
5. auto incremento en el id: clave primaria -> auto_increment
6.  CONSTRAIN pk_usuarios PRIMARY KEY(id) -> de esta manera definimos la llave primaria

*/


CREATE TABLE usuarios(
    id         int(15) auto_increment not null,
    nombre     varchar(100) not null,
    apellido   varchar(255) default ('hola que tal'),
    email      varchar(100) not null,
    password   varchar(255),
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
);