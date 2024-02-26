/*INSERTAR NUEVOS REGISTROS*/
/*Se pasan los datos exactos y en el orden extacto*/
INSERT INTO usuarios VALUES(null, 'Maickol', 'Velasco', 'maickol@velasco.com', '1234', '2024-10-05');
INSERT INTO usuarios VALUES(null, 'Erika', 'Tellez', 'erikal@tellez.com', '4667', '2025-10-05');
INSERT INTO usuarios VALUES(null, 'Nury', 'Perez', 'nury@perez.com', '4564', '2045-12-05');
INSERT INTO usuarios VALUES(null, 'Dario', ' ', 'Dario@ve;velasco.com', '45654', '2045-12-05');
INSERT INTO usuarios VALUES(null, 'sofia', '', 'Sofia@tellez.com', '4562254', '2055-12-05');

/*Insertar filas solo0 con ciertas columnas*/
INSERT INTO usuarios(email, password) VALUES('dario@velasco.com', 'admin');