--INSERT INTO public.usuario(id_usuario, correo, passw, fecha_nacimiento) VALUES(1, 'grunon.w@usach.cl', 'hola123', '1-01-00');

--INSERT INTO public.ranking_visualizacion(id_ranking, titulo_ranking, puntuacion_promedio) VALUES(3, 'Ciencia', '76');
--INSERT INTO public.ranking_visualizacion(id_ranking, titulo_ranking, puntuacion_promedio) VALUES(4, 'Accion', '80');
--INSERT INTO public.ranking_visualizacion(id_ranking, titulo_ranking, puntuacion_promedio) VALUES(5, 'Horror', '88');

--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking, id_lista_f) VALUES( 3, 'Rubius', 'El libro troll', 777, 9990, 5, 1, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking, id_lista_f) VALUES( 4, 'J.k Rowling', 'Harry Potter y el caliz de fuego', 1000, 19990, 20, 2, 1);
--INSERT INTO public.libro(id_libro, autor, titulo, visitas, precio, stock, id_ranking, id_lista_f) VALUES( 5, 'Desconocido', 'Zill', 999, 1, 5, 3, 1);

--INSERT INTO public.cuenta_libro(id_libro, id_usuario) VALUES(3, 1);
--INSERT INTO public.cuenta_libro(id_libro, id_usuario) VALUES(4, 1);
--INSERT INTO public.cuenta_libro(id_libro, id_usuario) VALUES(5, 1);

--INSERT INTO public.carrito_de_compras(id_carro, num_productos, id_metodo_pago, id_cuenta, id_libro) VALUES(1, 3, 1, 1, 1);
--INSERT INTO public.carrito_de_compras(id_carro, num_productos, id_metodo_pago, id_cuenta, id_libro) VALUES(2, 2, 1, 1, 2);
--INSERT INTO public.carrito_de_compras(id_carro, num_productos, id_metodo_pago, id_cuenta, id_libro) VALUES(3, 3, 1, 1, 4);

-----/Total del carrito/-----
--SELECT SUM(precio) AS total
--FROM libro
--JOIN carrito_de_compras ON libro.id_libro = carrito_de_compras.id_libro;

-----/Libros que hay en elcarrito de compras/-----
SELECT autor, titulo, precio
FROM libro 
JOIN carrito_de_compras ON libro.id_libro = carrito_de_compras.id_libro;
