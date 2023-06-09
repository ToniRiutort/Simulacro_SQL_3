CREATE DATABASE ProveedoresPiezas;

USE ProveedoresPiezas;

CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre_proveedor VARCHAR(255),
    ciudad_proveedor VARCHAR(255)
);

CREATE TABLE Piezas (
    id_pieza INT PRIMARY KEY,
    nombre_pieza VARCHAR(255),
    color VARCHAR(50),
    peso DECIMAL(10,2),
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

INSERT INTO Proveedores (id_proveedor, nombre_proveedor, ciudad_proveedor) VALUES
(1, 'Proveedor A', 'Madrid'),
(2, 'Proveedor B', 'Barcelona'),
(3, 'Proveedor C', 'Valencia'),
(4, 'Proveedor D', 'Sevilla');

INSERT INTO Piezas (id_pieza, nombre_pieza, color, peso, id_proveedor) VALUES
(1, 'Pieza 1', 'rojo', 10.0, 1),
(2, 'Pieza 2', 'azul', 20.0, 1),
(3, 'Pieza 3', 'verde', 15.0, 2),
(4, 'Pieza 4', 'azul', 25.0, 3),
(5, 'Pieza 5', 'rojo', 30.0, 4),
(6, 'Pieza 6', 'verde', 20.0, 2),
(7, 'Pieza 7', 'azul', 35.0, 3),
(8, 'Pieza 8', 'rojo', 40.0, 4);
