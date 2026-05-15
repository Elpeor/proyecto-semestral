CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;

CREATE TABLE IF NOT EXISTS Despacho (
    idDespacho INT AUTO_INCREMENT PRIMARY KEY,
    fechaDespacho DATE NOT NULL,
    patenteCamion VARCHAR(255),
    intento INT NOT NULL,
    idCompra INT NOT NULL,
    direccionCompra VARCHAR(255) NOT NULL,
    valorCompra INT NOT NULL,
    despachado BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS Venta(

    idVenta INT AUTO_INCREMENT PRIMARY KEY,
    direccionCompra VARCHAR(255) NOT NULL,
    valorCompra INT NOT NULL,
    fechaCompra DATE NOT NULL,
    despachoGenerado BOOLEAN NOT NULL
);

INSERT INTO Despacho (fechaDespacho, patenteCamion, intento, idCompra, direccionCompra, valorCompra, despachado) VALUES
('2023-10-01', 'ABC123', 1, 1001, 'Calle 123', 19990, FALSE),
('2023-10-02', 'DEF456', 2, 1002, 'Avenida 456', 17990, FALSE),
('2023-10-03', 'GHI789', 1, 1003, 'Boulevard 789', 5990, FALSE),
('2023-10-04', 'JKL012', 3, 1004, 'Calle 012', 15990, FALSE),
('2023-10-05', 'MNO345', 1, 1005, 'Avenida 345', 25990, FALSE);

INSERT INTO Venta (direccionCompra, valorCompra, fechaCompra, despachoGenerado) VALUES
('Calle 123', 19990, '2023-10-01', FALSE),
('Avenida 456', 17990, '2023-10-02', FALSE),
('Boulevard 789', 5990, '2023-10-03', FALSE),
('Calle 012', 15990, '2023-10-04', FALSE),
('Avenida 345', 25990, '2023-10-05', FALSE);