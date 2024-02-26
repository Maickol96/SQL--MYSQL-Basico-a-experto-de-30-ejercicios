#INSERTAR DATOS EN CATEGORIAS#
          SELECT * FROM categorias;
INSERT INTO categorias VALUE(null, 'Accion');
INSERT INTO categorias VALUE(null, 'Rol');
INSERT INTO categorias VALUE(null, 'Deportes');



#INSERTAR DATOS EN ENTRADAS#
SELECT * FROM entradas;
/*usuario 1 categoria 1,2 y 3*/
INSERT INTO entradas VALUE(null, 1, 1, 'Novedades de GTA5 Online','Rreviwe del GRTA 5', CURDATE());
INSERT INTO entradas VALUE(null, 1, 2, 'Review de LOL Online','Todo sobre el LOL', CURDATE());
INSERT INTO entradas VALUE(null, 1, 3, 'Nuevos jugadores de FIFA 19 Online','Rreviwe del FIFA 19', CURDATE());

INSERT INTO entradas VALUE(null, 2, 1, 'Novedades de Assasins online','Rreviwe del Assasins', CURDATE());
INSERT INTO entradas VALUE(null, 2, 2, 'Review de WOW Online','Todo sobre el WOW', CURDATE());
INSERT INTO entradas VALUE(null, 2, 3, 'Nuevos jugadores de PES 19 Online','Rreviwe del PES 19', CURDATE());

INSERT INTO entradas VALUE(null, 3, 1, 'Novedades de CALL OF DUTY WARZONE','Rreviwe del CALL OF DUTY WARZONE', CURDATE());
INSERT INTO entradas VALUE(null, 3, 2, 'Review de Battlefield Online','Todo sobre el Battlefield', CURDATE());
INSERT INTO entradas VALUE(null, 3, 3, 'Nuevos jugadores de Pubg','Rreviwe del Pubg', CURDATE());