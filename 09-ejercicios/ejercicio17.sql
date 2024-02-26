/*
Ejercicio 17 => Obtener un listado con los encargos realizados por el cliente 'Fruteria ANTONIA INC' */

SELECT * FROM encargos ;

/*INNER JOIN => consulta multi tabla, es decir unimos otra tabla a la consulta */

SELECT e.id AS'N ENCARGO', cantidad, c.nombre, co.modelo, e.fecha FROM encargos e
    #Unimos otras tablas a la consulta#
         INNER JOIN clientes c ON c.id = e.cliente_id
         INNER JOIN coches co ON co.id = e.coche_id
         WHERE cliente_id IN #Sub consulta#
                       (SELECT  id FROM clientes WHERE nombre ='Fruteria Antonia INC' );