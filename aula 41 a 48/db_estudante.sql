create database db_estudante;
use db_estudante;

create table aluno(
id_aluno int primary key auto_increment,
nome varchar(100)
);

create table professor(
id_professor int primary key auto_increment,
nome varchar(100),
cpf char(11)
);

create table curso(
id_curso int primary key auto_increment,
nome varchar(100),
carga_horaria int
);

create table turma(
id_turma int primary key auto_increment,
nome varchar(100),
id_curso int,

foreign key (id_curso) references curso(id_curso)
);

create table aluno_telefone(
id_telefone int primary key auto_increment,
telefone varchar(20),
id_aluno int,

foreign key (id_aluno) references aluno(id_aluno)
);

create table aluno_email(
id_email int primary key auto_increment,
email varchar(100),
id_aluno int,

foreign key (id_aluno) references aluno(id_aluno)
);

create table matricula(
id_matricula int primary key auto_increment,
data_matricula date,
id_aluno int,
id_turma int,

foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_turma) references turma(id_turma)
);

create table documento(
id_documento int primary key auto_increment,
nome_documento varchar(45),
numero_documento varchar(45),
data_entrega date,
id_matricula int,

foreign key (id_matricula) references matricula(id_matricula)
);

create table professor_telefone(
id_telefone int primary key auto_increment,
telefone varchar(20),
id_professor int,

foreign key (id_professor) references professor(id_professor)
);

create table professor_email(
id_email int primary key auto_increment,
email varchar(100),
id_professor int,

foreign key (id_professor) references professor(id_professor)
);

create table turma_professor(
id_turma int,
id_curso int,
id_professor int,

foreign key (id_turma) references turma(id_turma),
foreign key (id_curso) references curso(id_curso),
foreign key (id_professor) references professor(id_professor)
);

create table horario(
id_horario int primary key auto_increment,
dia_semana varchar(20),
hora_inicio time,
hora_final time,
id_turma int,

foreign key (id_turma) references turma(id_turma)
);

create table curso_modalidade(
id_modalidade int primary key auto_increment,
modalidade varchar(50),
id_curso int,

foreign key (id_curso) references curso(id_curso)
);

create table disciplina(
id_disciplina int primary key auto_increment,
nome varchar(50),
carga_horaria int
);

create table grade_curricular(
id_curso int,
id_disciplina int,
foreign key (id_curso) references curso(id_curso),
foreign key (id_disciplina) references disciplina(id_disciplina)
);

create table bibliografia(
id_bibliografia int primary key auto_increment,
referencia varchar(30),
id_disciplina int,

foreign key (id_disciplina) references disciplina(id_disciplina)
);
