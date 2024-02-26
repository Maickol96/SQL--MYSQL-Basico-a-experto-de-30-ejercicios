/*
Ejercicio => Crea una vista llamada vendedoresA, que incluira todos ls vendedores del grupo que se llame vendedoresA
*/
#Se crea una vista
CREATE VIEW vendedoresA AS
    SELECT * FROM vendedores WHERE grupo_id IN
    (SELECT id FROM grupos WHERE nombre= "vendedores A");#Sub consulta

    SELECT * FROM vendedoresA;