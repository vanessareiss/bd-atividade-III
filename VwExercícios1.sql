create database sistema;
use sistema;

CREATE TABLE funcionarios (
  id INT PRIMARY KEY NOT NULL,
  nome VARCHAR(20),
  cargo VARCHAR(15)
);

INSERT INTO funcionarios (id, nome, cargo) VALUES
(1, "Kauã", "Analista"),
(2, "Carlos", "Administrativo"),
(3, "Jéssica", "Administrativo"),
(4, "Vanessa", "Vendedor"),
(5, "Daniel", "Gerente");

CREATE VIEW vw_funcionarios_departamento AS
SELECT nome, cargo
FROM funcionarios
WHERE cargo = 'Administrativo';

SELECT * FROM vw_funcionarios_departamento;

