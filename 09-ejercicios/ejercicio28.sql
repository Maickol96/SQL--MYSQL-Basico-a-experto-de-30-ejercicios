/*
Ejercicio => Mostrar todos los vendedores y el numero de clientes.
SE debe mostrar tengan o no clientes
*/

SELECT v.nombre, v.apellidos, COUNT(c.id) FROM vendedores v
# LEFT JOIN => Que me muestre todas las filas de vendedores independientemente de los que hagamos despues
LEFT JOIN clientes c ON c.vendedor_id = v.id
#agrupo por ide del vendedor
GROUP BY v.id ;