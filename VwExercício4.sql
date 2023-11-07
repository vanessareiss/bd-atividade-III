create database sistema;
use sistema;

create table produtos(
id int auto_increment primary key not null,
nome varchar (20),
preco decimal (9,2)
);

insert into produtos (nome, preco) values
("Mesa redonda", 120.00),
("Cadeira de madeira", 90.00),
("Penteadeira", 300.00),
("Televisão", 1700.00),
("Ventilador Potente", 200.00);

create view vw_produtos_caros as
select nome, preco
from produtos
where preco > 100;

select * from vw_produtos_caros;



