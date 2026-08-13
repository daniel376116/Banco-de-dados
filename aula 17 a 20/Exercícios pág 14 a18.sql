# Exercício 1 
select * from funcionarios order by nome;
select * from funcionarios order by salario desc;
select * from funcionarios order by nascimento;

# Exercício 2
select * from funcionarios order by salario desc limit 5;
select * from funcionarios order by nascimento desc limit 3;

# Exercício 3
select * from funcionarios where cargo like 'Analista de dados';
select * from funcionarios where salario = 3500.00;
select * from funcionarios where salario > 5000.00;
select * from funcionarios where salario < 2000.00;
select * from funcionarios where nascimento > '1990-01-01';
select * from funcionarios where cargo = 'Médico' and salario > 4000.00;
select * from funcionarios where cargo like 'Contador' or cargo like 'Contador fiscal';

# Exercício 4 
select * from funcionarios where cargo = 'Nutricionista' order by nome;
select * from funcionarios where salario > 3000.00 order by salario;

# Exercício 5 
select nome, cargo, salario from funcionarios where nome like 'M%';
select nome, cargo from funcionarios where cargo like '%Analista%';
select nome,cpf, nascimento from funcionarios where nome like '%Williams';
