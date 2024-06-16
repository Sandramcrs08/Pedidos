CREATE DATABASE Pedidos;

USE Pedidos;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (ClienteID, Nome, Email) VALUES
(1, 'João Silva', 'joao.silva@email.com'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido) VALUES
(101, 1, '2022-01-10'),
(102, 2, '2022-01-11');

SELECT *
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;
