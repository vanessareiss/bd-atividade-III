create database sistema;
use sistema;

create table produtos(
id int auto_increment primary key,
nome varchar(20),
quantidade int
);

insert into produtos (nome, quantidade) values
("Garrafa Metálica", 255),
("Estojo colorido", 2),
("Pacote de canetas coloridas", 4),
("Caderno Barbie", 3),
("Boneta baby", 900);

create view vw_produtos_quantidade as
SELECT nome, quantidade
from produtos
where quantidade < 5;

select * from vw_produtos_quantidade;