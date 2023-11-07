create database sistema;
use sistema;

CREATE TABLE vendedores (
  id INT PRIMARY KEY NOT NULL,
  nome VARCHAR(20)
);

CREATE TABLE clientes (
  id INT PRIMARY KEY NOT NULL,
  nome VARCHAR(20),
  id_vendedor INT,
  foreign key (id_vendedor) references vendedores (id)
);

INSERT INTO vendedores (id, nome) VALUES
(1, "Carlos Santana"),
(2, "André Luís"),
(3, "Isaque Florentino"),
(4, "Rafael Conceição"),
(5, "Marlon Peixoto");


INSERT INTO clientes (id, nome, id_vendedor) VALUES
(1, "Daniel Lima", 1),
(2, "Marta Santos", 2),
(3, "Ana Martins", 1),
(4, "Breno Dantas", 3),
(5, "Silvoney Silva", 5),
(6, "Jéssica Aline", 4);

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT c.nome AS nome_cliente, v.nome AS nome_vendedor
FROM clientes c
JOIN vendedores v ON c.id_vendedor = v.id;

SELECT * FROM vw_relacionamento_cliente_vendedor;


