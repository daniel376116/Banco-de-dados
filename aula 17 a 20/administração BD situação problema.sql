drop database if exists gigabytedb;
create database gigabytedb;
create table produtos(
	sku varchar(20) primary key,
    nome_produto varchar(100) not null,
    categoria varchar(50),
    preco decimal(10,2) not null,
    quantidade_estoque int not null default 0
    );
    


select * from produtos where categoria like 'Hardware' and quantidade_estoque > 0
 order by preco limit 3;

select nome_produto, sku, quantidade_estoque from produtos where quantidade_estoque = 0;

select nome_produto, preco from produtos order by preco desc limit 2;

select * from produtos where nome_produto like '%placa%';

select * from produtos where categoria like 'Periféricos' order by preco desc limit 3;
