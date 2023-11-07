CREATE DATABASE sistema;
USE sistema;

CREATE TABLE pedidos_pendentes (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR(25),
  status_pedido VARCHAR(10)
);

INSERT INTO pedidos_pendentes (nome, status_pedido) VALUES
("Toalha de Algodão", "Entregue"),
("Saboneteira baby", "Pendente"),
("Hidratação Capilar Salon Line", "Pendente"),
("Escova de dente elétrica", "Pendente"),
("Hidratante facial", "Entregue");

CREATE VIEW vw_pedidos_pendentes AS
SELECT nome, status_pedido
FROM pedidos_pendentes
WHERE status_pedido = 'Pendente';

SELECT * FROM vw_pedidos_pendentes;





