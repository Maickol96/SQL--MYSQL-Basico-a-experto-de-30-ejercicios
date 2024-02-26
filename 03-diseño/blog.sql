/*CREAMOS TABLAS*/
CREATE TABLE usuarios(
    id         int(255) auto_increment not null,
    nombre     varchar(100) not null,
    apellidos  varchar(100) not null,
    email      varchar(255) not null,
    password   varchar(255) not null,
    fecha      date not null,

    /*de esta manera definimos la clave primaria*/
    CONSTRAINT pk_usuarios PRIMARY KEY(id),

    /*Restriccion para que le email sea unico*/
    /*Se indica que no puede recibir como entrada un email repetido, debe ser inico y distinto*/
    CONSTRAINT uq_email UNIQUE(email)
)ENGINE=InnoDb;


CREATE TABLE categorias(
    id      int(255) auto_increment not null,
    nombre  varchar(100) not null,
    /*de esta manera definimos la clave primaria*/
    CONSTRAINT pk_categorias PRIMARY KEY(id)
)ENGINE=InnoDb;


/*Forma adecuada de de escribir una clave agena o foranea es en singular y co el guion bajo (identificador de otra tabla)*/
CREATE TABLE entradas(
    id             int(255) auto_increment not null ,
    usuarios_id    int(255) not null ,
    categoria_id   int(255) not null ,
    titulo         varchar(255) not null ,
    descripcion    MEDIUMTEXT,
    fecha          date not null,

    /*de esta manera definimos la clave primaria*/
    CONSTRAINT pk_entradas PRIMARY KEY(id),

    /*de esta forma definimos la clave agena o fk*/
    /*CONSTRAINT fk_nombre_tabla_actual_de_donde_viene FOREIGN KEY(nombre_dato_tabla) REFERENCES tabla_origen(dato_nombre_original)*/
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuarios_id) REFERENCES usuarios(id),
    CONSTRAINT fk_entradas_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
)ENGINE=InnoDb;

