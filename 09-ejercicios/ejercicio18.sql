/*
EJercicio 18 => Listar los clientes que han echo algun encargo del coche "Mercedes Ranchera"
*/
SELECT * FROM coches;
#Sacar todos los datos de los clientes cuando el cliente exista en las consultas posteriores#
SELECT * FROM clientes WHERE id IN
                #Sacarme los clientes_id de los clientes que an echo encargos al siguiente coche id#
              (SELECT cliente_id FROM encargos WHERE coche_id
                                                         IN#Mesa ca todos los ide de los coches cuyo nombre sea 'Mercedes Ranchera'  #
                                                     (SELECT id FROM coches WHERE modelo LIKE '%Mercedes Ranchera%'));

