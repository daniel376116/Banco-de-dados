# Exercício 1
set sql_safe_updates = 0;
update produtos
set quantidade_estoque = 25
where sku = 'HW005';

select * from produtos where sku = 'HW005';

#Exercício 2
update produtos
set quatidade_estoque = 10
where sku = 'HW010';

select * from produtos where sku like 'HW010';

# Exercícicio 3
update produtos
set preco = 4999.00
where sku = 'HW012';

select * from produtos where sku = 'HW012';

# Exercício 4
update produtos
set nome_produto = 'Fonte 1000W Modular 80 Plus Gold'
where sku = 'HW017';

select * from produtos where sku = 'HW017';

# Exercício 5
update produtos 
set preco = 329.00
where sku like 'PER002';

select * from produtos where sku like 'PER002';

# Exercício 6
update produtos 
set quantidade_estoque = 25
where sku like 'PER009';

select * from produtos where sku like 'PER009';

# Exercício 7
update produtos 
set preco = 2699.00
where sku like 'PER011';

select * from produtos where sku like 'PER011';

# Exercício 8
update produtos 
set quantidade_estoque = 8
where sku like 'PER016';

select * from produtos where sku like 'PER016';

# Exercício 9
update produtos 
set nome_produto = 'Microsoft 365 (Assinatura Anual)'
where sku like 'SW012';

select * from produtos where sku like 'SW012';
