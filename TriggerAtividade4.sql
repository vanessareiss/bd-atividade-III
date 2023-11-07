
CREATE DATABASE sistema;
USE sistema;

CREATE TABLE funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  cargo VARCHAR(50)
);

CREATE TABLE funcionarios_demitidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  cargo VARCHAR(50)
);

DELIMITER //
CREATE TRIGGER move_para_demitidos
AFTER DELETE ON funcionarios
FOR EACH ROW
BEGIN
  INSERT INTO funcionarios_demitidos (nome, cargo)
  VALUES (OLD.nome, OLD.cargo);
END;
//
DELIMITER ;


INSERT INTO funcionarios (nome, cargo) VALUES
('Funcionário 1', 'Analista'),
('Funcionário 2', 'Gerente'),
('Funcionário 3', 'Vendedor'),
('Funcionário 3', 'Assistente'),
('Funcionário 3', 'Vendedor');

-- Excluir um registro na tabela
DELETE FROM funcionarios WHERE nome = 'Funcionário 2';

-- Consultar a tabela 
SELECT * FROM funcionarios_demitidos;
