INSERT INTO categoria (nombre_categoria, descripcion_categoria)
VALUES
('Ciencia', 'Temas científicos y conocimiento académico.'),
('Fantasía', 'Mundos imaginarios.'),
('Misterio', 'Enigmas, crímenes o situaciones intrigantes.'),
('Horror', 'Miedo, terror o suspenso.'),
('Filosofía', 'Reflexiones sobre la existencia y el pensamiento.'),
('Aventura', 'Historias emocionantes de viajes y peripecias.'),
('Magia', 'Poderes mágicos o hechicería.'),
('Detectives', 'Resolución de misterios y crímenes por detectives.'),
('Sobrenatural', 'Elementos paranormales o sobrenaturales.');

INSERT INTO ubicacion (pais, ciudad)
VALUES
('Chile', 'Santiago'),
('Chile', 'Valparaíso'),
('Italia', 'Roma'),
('Estados Unidos', 'Springfield'),
('Inglaterra', 'Londres');

INSERT INTO usuario (nombre, correo, contrasena, telefono, fecha_nacimiento, id_ubicacion)
VALUES
('Ignacio Riquelme', 'ignacio123@ejemplo.com', '123456', '912345678', '1998-12-21', 2),
('Alex Mellado', 'alex456@gmail.com', 'australia', '92312458', '1999-03-22', 5),
('Moises Godoy', 'moises.g@yahoo.com', 'hola112', '920201717', '2000-04-17', 3),
('Jaime Vadell', 'jaime.vadell@ejemplo.com', '654321', '968982223', '1999-02-06', 1),
('Homero J Simpson', 'homero.simpson@ejemplo.com', '54321', '123456789', '1956-05-12', 4),
('Humberto Maturana', 'humberto.maturana@example.com', '123clave321', '123456789', '1928-09-14', 1),
('John Ronald Reuel Tolkien', 'john.Tolkien@usach.cl', '13fdsa456', '123987456', '1892-01-03', 5),
('Joanne Rowling', 'genghis@example.com', '123clavefasd', '369852147', '1965-07-31', 5),
( 'Stephen Edwin King', 'stephen.king@example.com', 'clavexyz', '369852147', '1947-09-21', 4),
('Edgar Allan Poe', 'edgar.poe@usach.cl', 'cl9v3xyz', '909392187', '1809-01-19', 5);

INSERT INTO libro (autor, titulo, visitas, precio, stock, favoritos, id_usuario)
VALUES
('Humberto Maturana', 'El sentido de lo humano', 150, 1500, 1000, 1, 6),
('JRR Tolkien', 'El Señor de los Anillos', 1500, 1500, 1000, 3, 7),
('JK Rowling', 'Harry Potter y la Piedra Filosofal', 2500, 1500, 1000, 3, 8),
('Stephen King', 'It', 100, 1500, 25, 2, 9),
('Edgar Allan Poe', 'Los asesinatos en la Rue Morgue', 200, 1500, 1000, 1, 10),
('Humberto Maturana', 'La realidad: ¿objetiva o construida?', 50, 1500, 1000, 1, 6),
('JRR Tolkien', 'El Hobbit', 1200, 1500, 1000, 4, 7),
('JK Rowling', 'Harry Potter y el cáliz de fuego', 3000, 1500, 1000, 3, 8),
('Stephen King', 'Carrie', 1000, 1500, 1000, 1, 9),
('Edgar Allan Poe', 'El cuervo', 300, 1500, 1000, 1, 10),
('JK Rowling', 'Animales fantásticos y dónde encontrarlos', 1000, 1900, 1000, 1, 8),
('JK Rowling', 'Harry Potter y el misterio del príncipe', 1000, 2900, 1000, 1, 8),
('JK Rowling','Harry Potter y el prisionero de Azkaban', 1000, 1700, 1000, 1, 8),
('JRR Tolkien','El señor de los anillos: La comunidad del anillo', 1200, 1500, 1000, 4, 7),
('JRR Tolkien','El Hobbit: La desolación de Smaug', 1200, 1500, 1000, 4, 7),
('JRR Tolkien','El Hobbit: Un viaje inesperado', 1200, 1500, 1000, 4, 7);

INSERT INTO categoria_libro (id_categoria, id_libro)
VALUES
(1, 1),
(2, 1),
(5, 1),
(2, 2),
(6, 2),
(7, 2),
(3, 3),
(5, 3),
(3, 4),
(4, 4),
(5, 5),
(2, 6),
(5, 6),
(2, 7),
(5, 8),
(8, 9),
(5, 10);

INSERT INTO usuario_libro (id_libro, id_usuario)
VALUES
(1, 1),
(1, 6),
(2, 2),
(2, 7),
(3, 5),
(3, 9),
(4, 7),
(4, 8),
(5, 5),
(5, 10);

INSERT INTO lista_favoritos(id_usuario, id_libro)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 2),
(2, 3),
(2, 7),
(3,2),
(3,3),
(3,7),
(3,8),
(4,7),
(4,8),
(4,4);

INSERT INTO sesion (id_usuario, comienzo_sesion, fin_sesion)
VALUES
(1, '2023-07-01', '2023-07-01'),
(2, '2023-07-02', '2023-07-02'),
(3, '2023-07-03', '2023-07-03'),
(4, '2023-07-04', '2023-07-04'),
(5, '2023-07-05', '2023-07-05'),
(6, '2023-07-06', '2023-07-06'),
(7, '2023-07-07', '2023-07-07'),
(8, '2023-07-08', '2023-07-08'),
(9, '2023-07-09', '2023-07-09'),
(10, '2023-07-10', '2023-07-10');

INSERT INTO rol (nombre_rol, descripcion_rol, permisos)
VALUES
('Usuario','Rol base; permite visualizar los libros y comprarlos', 'Comprar'),
('Autor', 'Permite subir libros y editar los libros subidos', 'Subir Editar'),
('Administrador', 'Permite realizar operaciones CRUD en el sistema', 'Eliminar Editar Actualizar Modificar');

INSERT INTO usuario_rol (id_usuario, id_rol)
VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2);

INSERT INTO resena (id_usuario, id_libro, nota, descripcion, fecha)
VALUES
(1, 10, 4, 'Me encantó este libro, altamente recomendado.', '2023-07-01'),
(4, 2, 3, 'El libro fue interesante pero le faltó profundidad.', '2023-07-02'),
(5, 6, 5, '¡Increíble libro! No pude soltarlo hasta terminarlo.', '2023-07-03'),
(2, 1, 2, 'Me decepcionó este libro, no cumplió mis expectativas.', '2023-07-04'),
(3, 5, 4, 'Una lectura entretenida, me mantuvo enganchado.', '2023-07-05'),
(7, 8, 5, 'El autor demuestra un profundo conocimiento del tema.', '2023-07-06'),
(9, 10, 3, 'La vida de un crítico es sencilla en muchos aspectos, arriesgamos poco, y tenemos poder sobre aquellos que ofrecen su trabajo y su servicio a nuestro juicio.', '2023-07-07'),
(10, 11, 4, 'Recomendaría este libro a cualquier amante de la ciencia ficción.', '2023-07-08'),
(8, 15, 2, 'Me aburrí mientras lo leía, no lo terminé.', '2023-07-09'),
(9, 12, 3, 'El libro tiene algunas ideas interesantes, pero la ejecución fue floja.', '2023-07-10');

INSERT INTO metodo_pago (tipo_pago)
VALUES
('Tarjeta de crédito'),
('Paypal'),
('Transferencia bancaria'),
('QR'),
('Tarjeta de débito');

INSERT INTO restriccion ( edad_minima)
VALUES
(5),
(10),
(16),
(18),
(0);

INSERT INTO libro_restriccion(id_libro, id_restriccion)
VALUES
(1, 5),
(2, 9),
(3, 7),
(4, 2),
(5, 1);

INSERT INTO restriccion_ubicacion (id_restriccion, id_ubicacion)
VALUES
(1, 3),
(1, 4),
(3, 6),
(4, 8),
(5, 8);

INSERT INTO libro_restriccion(id_libro, id_restriccion)
VALUES
(1, 5),
(2, 9),
(3, 7),
(4, 2),
(5, 1);

INSERT INTO boleta (fecha_pago, resumen_compra, total_pagado, id_carro, id_usuario)
VALUES
('2023-07-01','Harry Potter y la Piedra Filosofal, El Señor de los Anillos', 3000, 1, 1),
('2023-07-01','Los asesinatos en la Rue Morgue', 1500, 2, 2),
('2023-07-01','It, Harry Potter y el cáliz de fuego, Carrie', 4500, 3, 3),
('2023-07-01','El cuervo', 1500, 4, 4),
('2023-07-01','El Hobbit', 1500, 5, 5),
('2023-07-01','Harry Potter y el cáliz de fuego', 1500, 6, 6),
('2023-07-01','La realidad: ¿objetiva o construida?', 1500, 7, 7),
('2023-07-01','El Señor de los Anillos', 1500, 8, 8),
('2023-07-01','Harry Potter y el cáliz de fuego', 1500, 9, 9),
('2023-07-01','El Señor de los Anillos, It', 3000, 10, 10);

INSERT INTO CarritoCompra (fecha_creacion, id_metodo_pago, id_usuario)
VALUES
('2023-07-01', 1, 1),
('2023-07-01', 2, 2),
('2023-07-01', 3, 3),
('2023-07-01', 5, 4),
('2023-07-01', 4, 5),
('2023-07-01', 2, 6),
('2023-07-01', 4, 7),
('2023-07-01', 1, 8),
('2023-07-01', 3, 9),
('2023-07-01', 1, 10);

INSERT INTO libro_carrito (id_libro, id_carro)
VALUES
(3, 1),
(2, 1),
(5, 2),
(4, 3),
(8, 3),
(9, 3),
(10, 4),
(7, 5),
(8, 6),
(6, 7),
(2, 8),
(8, 9),
(2, 10),
(4, 10);