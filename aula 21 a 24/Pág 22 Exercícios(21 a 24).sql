set sql_safe_updates = 0;

# Exercício 1 
update funcionarios 
set salario = salario + 0.05 * salario
where salario between 2001 and 10000;

select * from funcionarios where salario between 2001 and 10500.00;

# Exercício 2
update funcionarios 
set salario = salario + 0.02 * salario
where salario between 1001 and 20000;

select * from funcionarios where salario between 1001 and 20400.00;
