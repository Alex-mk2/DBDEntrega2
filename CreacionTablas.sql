CREATE TABLE ubicacion (
    id_ubicacion SERIAL PRIMARY KEY,
    pais VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL
);

CREATE TABLE restriccion (
    id_restriccion SERIAL PRIMARY KEY,
    edad_minima INT
);

CREATE TABLE categoria (
    id_categoria SERIAL PRIMARY KEY,
    nombre_categoria VARCHAR(30) NOT NULL,
    descripcion_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE metodo_pago (
    id_metodo_pago SERIAL PRIMARY KEY,
    tipo_pago VARCHAR(30) NOT NULL
);

CREATE TABLE rol (
    id_rol SERIAL PRIMARY KEY,
    nombre_rol VARCHAR(30) NOT NULL,
    descripcion_rol VARCHAR(255) NOT NULL,
    permisos VARCHAR(50) NOT NULL
);

CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    contrasena VARCHAR(30) NOT NULL,
    telefono VARCHAR(12),
    fecha_nacimiento DATE NOT NULL,
    id_ubicacion INT NOT NULL,
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id_ubicacion)
);

CREATE TABLE libro (
    id_libro SERIAL PRIMARY KEY,
    autor VARCHAR(50) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    stock INT NOT NULL,
    visitas INT DEFAULT 0,
    favoritos INT DEFAULT 0,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE sesion (
    id_sesion SERIAL PRIMARY KEY,
    comienzo_sesion DATE NOT NULL,
    fin_sesion DATE,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE resena (
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    nota INT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

CREATE TABLE usuario_rol (
    id_usuario INT NOT NULL,
    id_rol INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);

CREATE TABLE lista_favoritos (
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

CREATE TABLE categoria_libro (
    id_categoria INT NOT NULL,
    id_libro INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

CREATE TABLE usuario_libro (
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

CREATE TABLE libro_restriccion (
    id_libro INT NOT NULL,
    id_restriccion INT NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_restriccion) REFERENCES restriccion(id_restriccion)
);

CREATE TABLE restriccion_ubicacion (
    id_restriccion INT NOT NULL,
    id_ubicacion INT NOT NULL,
    FOREIGN KEY (id_restriccion) REFERENCES restriccion(id_restriccion),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id_ubicacion)
);

CREATE TABLE carrito_compra (
    id_carro SERIAL PRIMARY KEY,
    num_productos INT NOT NULL,
    id_metodo_pago INT NOT NULL,
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago(id_metodo_pago),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

CREATE TABLE boleta (
    id_boleta SERIAL PRIMARY KEY,
    resumen_compra VARCHAR(255) NOT NULL,
    total_pagado INT NOT NULL,
    id_carro INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_carro) REFERENCES carrito_compra(id_carro),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);