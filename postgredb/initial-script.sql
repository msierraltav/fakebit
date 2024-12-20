CREATE TABLE CAJEROS (
    Codigo int identity PRIMARY KEY,
    NomApels nvarchar(255)
);

CREATE TABLE MAQUINAS_REGISTRADORAS (
    Codigo int identity PRIMARY KEY,
    Piso int
);

CREATE TABLE PRODUCTOS (
    Codigo int identity PRIMARY KEY,
    Nombre nvarchar(100),
    Precio int
);

CREATE TABLE VENTA (
    Cajero int,
    Maquina int,
    Producto int,
    PRIMARY KEY (Cajero, Maquina, Producto),
    FOREIGN KEY (Cajero) REFERENCES CAJEROS(Codigo),
    FOREIGN KEY (Maquina) REFERENCES MAQUINAS_REGISTRADORAS(Codigo),
    FOREIGN KEY (Producto) REFERENCES PRODUCTOS(Codigo)
);

INSERT INTO CAJEROS (NomApels) VALUES 
('Juan Perez'),
('John Doe')
('Mary Ines'),
('Ana Rosa');

INSERT INTO MAQUINAS_REGISTRADORAS (Piso) VALUES 
(1),
(2),
(3),
(4);

INSERT INTO PRODUCTOS (Nombre, Precio) VALUES 
('Leche', 100),
('Pan', 50),
('Queso', 200),
('Huevos', 80),
('Jamon', 150),
('Yogurt', 120),
('Mantequilla', 90),
('Galletas', 70),
('Cereal', 110),
('Jugo', 130);