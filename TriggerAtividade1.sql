
CREATE DATABASE sistema;
USE sistema;


CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  data_validade DATE
);


DELIMITER //
CREATE TRIGGER valida_data_validade
BEFORE INSERT ON produtos
FOR EACH ROW
BEGIN
  IF NEW.data_validade < CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Data de validade vencida. Produto não pode ser inserido.';
  END IF;
END;
//
DELIMITER ;


INSERT INTO produtos (nome, data_validade) VALUES
('Garrafa', '2023-10-22'),
('Garrafa', '2020-10-10');
