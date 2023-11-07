
CREATE DATABASE sistema;
USE sistema;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  preco DECIMAL(9,2)
);
DELIMITER //
CREATE TRIGGER aumenta_preco_produto
BEFORE UPDATE ON produtos
FOR EACH ROW
BEGIN
  SET NEW.preco = NEW.preco * 1.10; 
END;
//
DELIMITER ;

INSERT INTO produtos (nome, preco) VALUES
('Produto 1', 250.00),
('Produto 2', 70.00),
('Produto 3', 80.00),
('Produto 3', 55.00),
('Produto 3', 300.00);

-- Atualize o preço do "Produto A"
UPDATE produtos SET preco = 110.00 WHERE nome = 'Produto 1';
