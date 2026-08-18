create database cineverse_db;
use cineverse_db;
create table midias (
id_midia int primary key auto_increment,
titulo varchar(100),
genero varchar(50),
ano_lancamento int,
tipo varchar(10)
); 

# Selecionando (select)
select titulo, ano_lancamento from midias order by ano_lancamento desc;
select * from midias where ano_lancamento = 1994;
select * from midias where tipo = 'filme' and genero like '%Ficção científica%';
select * from midias where tipo = 'série' and genero like '%crime%' or genero like '%drama';
select * from midias where titulo like 'O senhor dos%';
select * from midias where tipo = 'filme' and ano_lancamento < 1990 order by ano_lancamento desc; 

# Atualizando (update)
set sql_safe_updates = 0;

update midias
set genero = 'Comédia, sitcom'
where titulo = 'Friends';
select * from midias where titulo = 'friends';

update midias
set genero = 'Animação, musical'
where titulo = 'O rei leão' and ano_lancamento = 1994;
select * from midias where titulo = 'O rei leão' and ano_lancamento = 1994;

# Deletando
delete from midias
where titulo = 'titanic';
select * from midias where id_midia = 27;

delete from midias
where ano_lancamento < 1985;
select * from midias;

# Extra 
select * from midias where id_midia = 6;
