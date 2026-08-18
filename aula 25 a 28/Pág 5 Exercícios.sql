create database banco_de_dados;
use banco_de_dados;

CREATE TABLE clientes (
    id VARCHAR(200),
    nome INT,
    cpf DATE,
    data_nascimento VARCHAR(10),
    renda_mensal BOOLEAN
);

alter table clientes
modify column id int;

describe clientes;

alter table clientes
modify column nome varchar(50);

describe clientes;

alter table clientes
modify column cpf char(11);

describe clientes;

alter table clientes
modify column data_nascimento date;

describe clientes;

alter table clientes
modify column renda_mensal float;

describe clientes; # Exercício 1

CREATE TABLE produtos (
    id TEXT,
    nome BOOLEAN,
    preco VARCHAR(5),
    quantidade DECIMAL(10,2),
    ativo INT
);

alter table produtos
modify column id int;

describe produtos;

alter table produtos
modify column nome varchar(45);

describe produtos;

alter table produtos
modify column preco decimal(10,2);

describe produtos;

alter table produtos
modify column quantidade int;

describe produtos;

alter table produtos
modify column ativo boolean;

describe produtos;

create table pedidos(
id varchar(100),
cliente_id date,
valor_total char(5),
data_pedido int,
status_pedido varchar(3)
);

alter table pedidos
modify column id int;

describe pedidos;

alter table pedidos
modify column cliente_id int;

describe pedidos;

alter table pedidos
modify column valor_total decimal(8,2);

describe pedidos;

alter table pedidos
modify column data_pedido date;

describe pedidos;

alter table pedidos
modify column status_pedido enum('Em andamento', 'entregue', 'não finalizado');

describe pedidos;

