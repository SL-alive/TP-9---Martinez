CREATE DATABASE normalizacion
use normalizacion

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    dni VARCHAR(20),
    fecha_nacimiento DATE,
    genero VARCHAR(100),
    activo TINYINT DEFAULT 1
);

CREATE TABLE productos (
	id_producto INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE facturas (
    id_factura INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_emision DATETIME NOT NULL,
    id_impuesto INT DEFAULT 1,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_impuesto) REFERENCES impuestos(id_impuesto)
);

CREATE TABLE items_factura (
    id_item INT PRIMARY KEY,
    id_factura INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_factura) REFERENCES facturas(id_factura),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

CREATE TABLE impuestos (
    id_impuesto INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    porcentaje DECIMAL(5,2) NOT NULL
);
