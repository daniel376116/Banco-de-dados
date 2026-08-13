create database gestao_escolar_daniel1;
drop database gestao_escolar_daniel1;
drop database gestao_escolar_dn;
create database gestao_escolar_dn;
use gestao_escolar_dn;
drop table aluno;
create table aluno(
	id_aluno int primary key auto_increment,
	nome varchar(45),
    data_nascimento date,
    telefone char(13)
    );
    
	insert into aluno (nome, data_nascimento, telefone)
    values
    ('Daniel Silva', '2010-02-28', '5524974001538'),
    ('Marcela Juliana', '2001-09-07','5524855661234');
    
    select * from aluno;
    
    