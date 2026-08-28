drop database if exists db_firjan_ead;
create database db_firjan_ead;
use db_firjan_ead;

create table alunos(
	id_aluno int primary key auto_increment,
	nome varchar(45),
	sobrenome varchar(45),
	email varchar(45),
	cpf char(11),
	data_nascimento date,
	data_cadastro date
);

create table cursos(
	id_curso int primary key auto_increment,
	titulo varchar(100),
	carga_horaria int,
	preco decimal(8,2)
);

create table modulos(
	id_modulo int primary key auto_increment,
	titulo varchar(100),
	duracao_horas int,
	id_curso int,

	foreign key (id_curso) references cursos(id_curso)
);

create table inscricao(
	id_aluno int,
	id_curso int,
	data_inscricao date,
	status enum('Ativo','Concluido','Abandonado'),

	foreign key (id_aluno) references alunos(id_aluno),
	foreign key (id_curso) references cursos(id_curso)
);

insert into cursos (titulo, carga_horaria, preco) values
	('Power BI para análise de dados', 40, 250.00),
	('Programação em Python', 60, 300.00),
	('Excel Avançado',20, 150.00 );


insert into alunos (nome, sobrenome, email, cpf, data_nascimento, data_cadastro) values
	('Ana', 'Silva', 'aninha244@gmail.com', '20532112503', 1996-05-27, 2019-11-27),
	('Carlos', 'Souza', 'carlossouza54@gmail.com', '21166985412', 1988-07-08, 2019-12-27),
	('Beatriz', 'Lima', 'bia2505@gmail.com', '20561222508', 2004-05-25, 2020-06-26),
	('João', 'Mendes', 'jotamendes.jm@gmail.com', '20632365826', 2007-12-07, 2021-05-06),
	('Fernanda', 'Costa', 'fernandacosta.c97@gmail.com', '20815523608', 1999-07-12, 2021-12-25);

set sql_safe_updates = 0;
update alunos
set data_nascimento = '2019-11-27';

update alunos
set data_cadastro = '2021-12-25';

insert into modulos (titulo, duracao_horas, id_curso) values
	('Introdução ao Power Query', 20, 1), ('Linguagem DAX', 40, 1),
	('Lógica de programação', 100, 2), ('Bibliotecas Pandas', 20, 2);

insert into inscricao (id_aluno, id_curso, data_inscricao, status) values
	(1, 1, '2021-09-07', 'Ativo'), (2, 1, '2021-09-06', 'Ativo'), (3, 2, '2021-09-16', 'Ativo');

# 1 add column nota_final
alter table inscricao
add column nota_final decimal(4,2);

select * from inscricao;

# 2 update email carlos
update alunos
set email = 'carlos.novo@email.com'
where id_aluno = 2;

select * from alunos;

# 3 por fim...
# 3.1 listagem geral
select * from cursos;

# 3.2 ordenação
select nome, sobrenome, email from alunos order by nome;

# 3.3 filtro específico
select titulo, duracao_horas from modulos
 where duracao_horas > 30;
 
 # 3.4 agregacao simples
 select count(id_aluno) as alunos_cadastrados
 from alunos;

# 3.5 inner join simples
select 
	c.titulo as titulo_curso, 
    carga_horaria,
	m.titulo as modulo_curso,
    duracao_horas
from cursos as c
inner join modulos as m
on c.id_curso = m.id_curso;