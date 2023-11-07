
CREATE DATABASE sistema;
USE sistema;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(20),
  estoque INT
);

CREATE TABLE vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto_id INT,
  quantidade_vendida INT,
  data_venda DATE
);

DELIMITER //
CREATE TRIGGER atualiza_estoque_vendas
AFTER INSERT ON vendas
FOR EACH ROW
BEGIN
  UPDATE produtos
  SET estoque = estoque - NEW.quantidade_vendida
  WHERE id = NEW.produto_id;
END;
//
DELIMITER ;

INSERT INTO produtos (nome, estoque) VALUES
('Produto 1', 100),
('Produto 2', 80),
('Produto 3', 60),
('Produto 4', 25),
('Produto 5', 90);


INSERT INTO vendas (produto_id, quantidade_vendida, data_venda) VALUES
(1, 4, '2023-09-07');

