/*
VISTAS:
Las podemos definir como una consulta almacenada en la base de
datos que se utiliza como una tabla virtual y no almacena
datos si no que utiliza asociaciones y los datos de las tabla
originales, de forma que siempre se mantiene actualizada
*/

CREATE VIEW entrdas_nombres AS
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria'
FROM entradas e
         INNER JOIN usuarios u ON e.usuarios_id = u.id
         INNER JOIN categorias c ON e.categoria_id = c.id;

/*Para borrar la vista*/
DROP VIEW entrdas_nombres;