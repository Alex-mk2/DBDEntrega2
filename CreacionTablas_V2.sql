CREATE TABLE ubicacion (
    id_ubicacion INT NOT NULL,
    pais VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_ubicacion)
);

CREATE TABLE restriccion (
    id_restriccion INT NOT NULL,
    edad_minima INT,
    PRIMARY KEY (id_restriccion)
);

CREATE TABLE categoria (
    id_categoria INT NOT NULL,
    nombre_categoria VARCHAR(30) NOT NULL,
    descripcion_categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE metodo_pago (
    id_metodo_pago INT NOT NULL,
    tipo_pago VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_metodo_pago)
);

CREATE TABLE rol (
    id_rol INT NOT NULL,
    nombre_rol VARCHAR(30) NOT NULL,
    descripcion_rol VARCHAR(255) NOT NULL,
    permisos VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_rol)
);

CREATE TABLE usuario (
    id_usuario INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    contrasena VARCHAR(30) NOT NULL,
    telefono VARCHAR(12),
    fecha_nacimiento DATE NOT NULL,
    id_ubicacion INT NOT NULL,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id_ubicacion)
);

CREATE TABLE libro (
    id_libro INT NOT NULL,
    autor VARCHAR(50) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    stock INT NOT NULL,
    visitas INT DEFAULT 0,
    favoritos INT DEFAULT 0,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_libro),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE sesion (
    id_sesion INT NOT NULL,
    comienzo_sesion DATE NOT NULL,
    fin_sesion DATE,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_sesion),
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
    id_carrito INT NOT NULL,
    fecha_creacion date NOT NULL,
    id_metodo_pago INT NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_carrito),
    FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago(id_metodo_pago),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE libro_carrito (
    id_libro INT NOT NULL,
    id_carrito INT NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_carrito) REFERENCES carrito_compra(id_carrito)
);

CREATE TABLE boleta (
    id_boleta INT NOT NULL,
    fecha_pago date NOT NULL,
    resumen_compra VARCHAR(255) NOT NULL,
    total_pagado INT NOT NULL,
    id_carrito INT NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_boleta),
    FOREIGN KEY (id_carrito) REFERENCES carrito_compra(id_carrito),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);