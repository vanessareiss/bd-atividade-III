CREATE DATABASE sistema;
USE sistema;

CREATE TABLE funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  cargo VARCHAR(50)
);

CREATE TABLE dependentes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  funcionario_id INT,
  FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id) ON DELETE CASCADE
);

INSERT INTO funcionarios (nome, cargo) VALUES
('Funcionário 1', 'Analista'),
('Funcionário 2', 'Gerente'),
('Funcionário 3', 'Vendedor'),
('Funcionário 4', 'RH'),
('Funcionário 5', 'Vendedor');

INSERT INTO dependentes (nome_dependente, funcionario_id) VALUES
('Dependente 1', 1),
('Dependente 2', 1),
('Dependente 3', 2);

DELIMITER //
CREATE TRIGGER exclui_dependentes
AFTER DELETE ON funcionarios
FOR EACH ROW
BEGIN
  DELETE FROM dependentes WHERE funcionario_id = OLD.id;
END;
//
DELIMITER ;

