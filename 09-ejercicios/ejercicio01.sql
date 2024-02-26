/*
Diseñar y crear la base de datos de un consecionario
*/
#CREAR BASE DE DATOS#
CREATE DATABASE IF NOT EXISTS concesionario;
USE concesionario;

#CREACION DE LA TABLA COCHES#
CREATE TABLE coches
(
    id     int(10) auto_increment not null,
    modelo varchar(100)           not null,
    marca  varchar(50),
    precio int(20)                not null,
    stock  int(255)               not null,
    CONSTRAINT pk_coches PRIMARY KEY (id)
) ENGINE = InnoDB;


#CREAR DE TABLA GRUPOS#
CREATE TABLE grupos
(
    id     int(10) auto_increment not null,
    nombre varchar(100)           not null,
    ciudad varchar(100),
    CONSTRAINT pk_grupos PRIMARY KEY (id)
) ENGINE = InnoDB;


#CREACION DE TABLA VENDEDORES#
CREATE TABLE vendedores
(
    id         int(10) auto_increment not null,
    grupo_id   int(10)                not null,
    jefe       int(100),
    nombre     varchar(100)           not null,
    apellidos  varchar(100),
    cargo      varchar(50),
    fecha_alta date,
    sueldo     float(20, 2),
    comision   float(10, 2),

    CONSTRAINT pk_vendedores PRIMARY KEY (id),
    CONSTRAINT fk_vendedor_grupo FOREIGN KEY (grupo_id) REFERENCES grupos (id),
    CONSTRAINT fk_vendedor_jefe FOREIGN KEY (jefe) REFERENCES vendedores (id)
) ENGINE = InnoDB;


#CREAR TABLA CLIENTES#
CREATE TABLE clientes
(
    id          int(10) auto_increment not null,
    vendedor_id int(10),
    nombre      varchar(150)           not null,
    ciudad      varchar(100),
    gastado     float(50, 2),
    fecha       date,
    CONSTRAINT pk_clientes PRIMARY KEY (id),
    CONSTRAINT fk_cliente_vendedor FOREIGN KEY (vendedor_id) REFERENCES vendedores (id)
) ENGINE = InnoDB;

#CREAR LA TABLA ENCARGOS#
CREATE TABLE encargos
(
    id         int(10) auto_increment not null,
    cliente_id int(10)                not null,
    coche_id   int(10)                not null,
    cantidad   varchar(100),
    fecha      date,

    CONSTRAINT pk_encargos PRIMARY KEY (id),
    CONSTRAINT fk_encargo_cliente FOREIGN KEY (cliente_id) REFERENCES clientes (id),
    CONSTRAINT fk_encargo_coche FOREIGN KEY (coche_id) REFERENCES coches (id)
) ENGINE = InnoDB;

/**************************************************************************************************************************/
#LLENAR LA BASE DE DATOS DE INFORMACION - INSERT#
#COCHE#
SELECT * FROM coches;
INSERT INTO coches VALUES (NULL, 'Renault Clio', 'Renault', 12000, 13);
INSERT INTO coches VALUES (NULL, 'Seat Panda', 'Seat', 10000, 10);
INSERT INTO coches VALUES (NULL, 'Mercedes Ranchera', 'Mercedes Benz', 32000, 24);
INSERT INTO coches VALUES (NULL, 'Porche Cayene', 'Porche', 65000, 5);
INSERT INTO coches VALUES (NULL, 'Lambo Aventador', 'Lamborgini', 170000, 2);
INSERT INTO coches VALUES (NULL, 'Ferrari Spider', 'Ferrari', 245000, 80);


#GRUPOS#
SELECT * FROM grupos;
INSERT INTO grupos VALUES (NULL,'Vendedoeres A', 'Bogota');
INSERT INTO grupos VALUES (NULL,'Vendedoeres B', 'Bogota');
INSERT INTO grupos VALUES (NULL,'Directores Mecanicos', 'Madrid');
INSERT INTO grupos VALUES (NULL,'Vendedoeres A', 'Barboda');
INSERT INTO grupos VALUES (NULL,'Vendedoeres B', 'Barboda');
INSERT INTO grupos VALUES (NULL,'Vendedoeres C', 'Florian');
INSERT INTO grupos VALUES (NULL,'Vendedoeres A', 'Puente');
INSERT INTO grupos VALUES (NULL,'Vendedoeres B', 'Belleza');
INSERT INTO grupos VALUES (NULL,'Vendedoeres C', 'Bucaramanga');


#VENDEDORES#
    SELECT * FROM vendedores;
INSERT INTO vendedores VALUES (NULL, 1, null, 'David', 'Lopez', 'Responsable tienda', CURDATE(),30000,4);
INSERT INTO vendedores VALUES (NULL, 1, 1, 'Sergio', 'Munevar', 'Ayudante tienda', CURDATE(),230000,2);
INSERT INTO vendedores VALUES (NULL, 2, null, 'Nelson', 'Sanchez', 'Responsable tienda', CURDATE(),380000,5);
INSERT INTO vendedores VALUES (NULL, 2, 3, 'Erika', 'Tellez', 'Ayudante tienda', CURDATE(),120000,6);
INSERT INTO vendedores VALUES (NULL, 3, null, 'Maickol', 'Velasco', 'Mecanico Jefe', CURDATE(),50000,2);
INSERT INTO vendedores VALUES (NULL, 4, null, 'Dario', 'Perez', 'Vendedor recambio', CURDATE(),130000,8);
INSERT INTO vendedores VALUES (NULL, 5, null, 'Emerson', 'Porras', 'Vendedor experto', CURDATE(),60000,2);
INSERT INTO vendedores VALUES (NULL, 6, null, 'Nury', 'Perez', 'Ejecutivo cuentas', CURDATE(),800000,1);
INSERT INTO vendedores VALUES (NULL, 6, 8, 'Cesar', 'Gonzales', 'Ayudante tienda', CURDATE(),10000,10);


#CLIENTES#
    SELECT * FROM clientes;
INSERT INTO clientes VALUES (NULL, 1, 'Construcciones Diaz In','Rio minero', '24000',CURDATE());
INSERT INTO clientes VALUES (NULL, 1, 'Fruteria Antonia Inc','Moniquira', '40000',CURDATE());
INSERT INTO clientes VALUES (NULL, 1, 'Imprenta Martinez Inc','Soacha', '320000',CURDATE());
INSERT INTO clientes VALUES (NULL, 1, 'Jesus Colchones Inc','La venta', '960000',CURDATE());
INSERT INTO clientes VALUES (NULL, 1, 'Bar Pepe Inc','Jesus Maria', '170000',CURDATE());
INSERT INTO clientes VALUES (NULL, 1, 'Tienda Pc Inc','Santa Sofia', '245000',CURDATE());


#ENCARGO#
SELECT * FROM encargos;
INSERT INTO encargos VALUES (NULL, 1, 2, 3,CURDATE());
INSERT INTO encargos VALUES (NULL, 2, 2, 4,CURDATE());
INSERT INTO encargos VALUES (NULL, 3, 3, 1,CURDATE());
INSERT INTO encargos VALUES (NULL, 4, 3, 3,CURDATE());
INSERT INTO encargos VALUES (NULL, 5, 5, 1,CURDATE());
INSERT INTO encargos VALUES (NULL, 6, 6, 1,CURDATE());

#Ejemplo -> cantidad de clientes
SELECT cantidad, nombre FROM encargos, clientes WHERE encargos.cliente_id = clientes.id;


#Ejemplo -> coches que an comprado
SELECT cantidad, nombre, modelo FROM encargos, clientes, coches WHERE encargos.cliente_id = clientes.id AND encargos.coche_id= coches.id;
