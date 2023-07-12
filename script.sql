--INSERT INTO public.usuario(id_usuario, nombre, correo, passw, telefono, fecha_nacimiento, id_ubicacion) VALUES(1,'Gruñon', 'grunon.w@usach.cl', 'hola123', '9123456789','01-01-00', 4);

--INSERT INTO public.lista_favoritos(id_lista_fav, cantidad, nombre_lista, id_usuario) VALUES(1, 3, 'Monos imaginarios', 1);
--INSERT INTO public.lista_favoritos(id_lista_fav, cantidad, nombre_lista, id_usuario) VALUES(2, 3, 'Monos imaginarios', 1);

--INSERT INTO public.ranking_favoritos(id_ranking_fav, puntuacion, id_lista_fav) VALUES(1, 90, 1);
--INSERT INTO public.ranking_favoritos(id_ranking_fav, puntuacion, id_lista_fav) VALUES(2, 90, 2);

--INSERT INTO public.ranking_visitas(id_ranking_vis, valoracion) VALUES(1, 76);
--INSERT INTO public.ranking_visitas(id_ranking_vis, valoracion) VALUES(2, 80);
--INSERT INTO public.ranking_visitas(id_ranking_vis, valoracion) VALUES(3, 88);

--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking_fav, id_ranking_vis, id_usuario) VALUES( 1, 'Rubius', 'El libro troll', 777, 9990, 99, 1, 2, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking_fav, id_ranking_vis, id_usuario) VALUES( 2, 'J.k Rowling', 'Harry Potter y el caliz de fuego', 1000, 19990, 99, 1, 2, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking_fav, id_ranking_vis, id_usuario) VALUES( 3, 'Dennis G. Zill', 'Zill', 999, 10990, 99, 1, 2, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking_fav, id_ranking_vis, id_usuario) VALUES( 4, 'J.k Rowling', 'Harry Potter y las reliquias de la muerte parte 1', 100, 19990, 99, 1, 2, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking_fav, id_ranking_vis, id_usuario) VALUES( 5, 'La sirenita', 'Disney', 100, 9990, 99, 1, 2, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking_fav, id_ranking_vis, id_usuario) VALUES( 6, 'Sherck', 'Dreamsworks', 1000, 11900, 99, 1, 2, 1);


--INSERT INTO public.lista_libro(id_lista_fav, id_libro) VALUES(1,1);


--INSERT INTO public.usuario_libro(id_libro, id_usuario) VALUES(1, 1);
--INSERT INTO public.usuario_libro(id_libro, id_usuario) VALUES(2, 1);
--INSERT INTO public.usuario_libro(id_libro, id_usuario) VALUES(3, 1);

--INSERT INTO public.metodo_pago(id_metodo_pago, tipo_pago, estado_pago, id_boletas) VALUES(1, 0, False, 1);

--INSERT INTO public.carrito_de_compras(id_carro, num_productos, id_metodo_pago, id_usuario, id_libro) VALUES(1, 0, 1, 1, 1);
--INSERT INTO public.carrito_de_compras(id_carro, num_productos, id_metodo_pago, id_usuario, id_libro) VALUES(2, 0, 1, 1, 2);
--INSERT INTO public.carrito_de_compras(id_carro, num_productos, id_metodo_pago, id_usuario, id_libro) VALUES(3, 0, 1, 1, 3);


-----/Total del carrito/-----
--SELECT SUM(precio) AS total
--FROM libro
--JOIN carrito_de_compras ON libro.id_libro = carrito_de_compras.id_libro;

-----/Libros que hay en elcarrito de compras/-----
--SELECT autor, titulo, precio
--FROM libro 
--JOIN carrito_de_compras ON libro.id_libro = carrito_de_compras.id_libro;

-----/Muestra lista favoritos de un usuario/-----
SELECT titulo, autor, precio
FROM LIBRO
JOIN lista_favoritos ON libro.id_libro = lista_favoritos.id_lista_fav;