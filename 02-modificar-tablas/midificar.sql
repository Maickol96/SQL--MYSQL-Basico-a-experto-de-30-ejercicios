SELECT * FROM usuarios;

/*RENOMBRAR UNA TABLA#
ALTER TABLE 'nombre_tabla' -> usuarios RENAME TO 'nombre_nuevo_tabla' -> usuario_remom;
  */
ALTER TABLE usuarios RENAME TO usuario_remom;
ALTER TABLE usuario RENAME TO usuarios;


/*CAMBIAR NOMBRE DE UNA COLUMNA
  Usamos ALTER TABLE 'nombre_tabla' -> usuarios_renom CHANGE 'nombre_columna_actual' -> apellidos 'nombre_columna_nuevo' -> apellido
 ' Tipo_dato(100)' -> varchar(100) 'Restriccion' -> null;
  */
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) null;


/*MODIFICAR UNA COLUMNA SIN CAMBIAR SU NOMBRE
  ALTER TABLE 'Nombre_tabla' -> usuario_remom MODIFY 'nombre_columna' -> apell 'datos_nuevos' -> char(40) not null;
  */
ALTER TABLE usuario_remom MODIFY apell char(40) not null;


/*AÑADIR UNA NUEVA COLUMNA
 ALTER TABLE 'nombre_tabla' -> usuarios ADD 'nombre_columna_nueva' -> webside 'tipo_de_dato' -> varchar(100) 'restriccion' -> null;
  */
ALTER TABLE  usuarios ADD webside varchar(100) null;


/*AÑADIR RESTRICCION A COLUMNA
ALTER TABLE 'nombre_tabla' -> usuarios ADD CONSTRAINT 'texto' -> uq_email -> 'no_repita' UNIQUE 'dato_a_aplicar' -> (email);
1. => ADD CONSTRAINT: podre agregar un tipo de restriccion mas avanzada
  */
ALTER TABLE usuarios ADD CONSTRAINT uq_email UNIQUE (email);


/*BORRAR UNA COLUMNA
  ALTER TABLE nombre_tabla -> usuarios  borrar_que_sea ->DROP  nombre_columna -> webside;
  */
ALTER TABLE usuarios DROP  webside;