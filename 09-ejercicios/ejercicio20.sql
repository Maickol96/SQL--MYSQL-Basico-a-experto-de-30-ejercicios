/*Ejerccio 20=> Seleccionar el grupo en el que trabaja el vendedor con el mayor salario y mostrar el nombre del grupo */

SELECT * FROM grupos;


SELECT * FROM grupos WHERE id IN
    (SELECT grupo_id FROM vendedores WHERE sueldo =    #Me saca el grupo de vendedore por id
     (SELECT MAX(sueldo) FROM vendedores));#id de la tabla grupos del vendeor con mas salarios#
