/*Ejercico 16 => Obtener un listado de clientes atendidos por el vendedor 'Davis Lopez*/

SELECT * FROM vendedores;

SELECT * FROM clientes WHERE vendedor_id IN
                             (SELECT id FROM vendedores WHERE nombre = 'David' AND apellidos = 'Lopez')