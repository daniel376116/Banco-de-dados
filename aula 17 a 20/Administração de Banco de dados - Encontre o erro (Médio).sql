-- criação do banco
CREATE DATABASE empresa_tech_dn; # A no database
USE empresa_tech_dn; # nome errado do banco de dados

-- tabela setores
CREATE TABLE setores (
id_setor INT PRIMARY KEY AUTO_INCREMENT,
nome_setor VARCHAR(50), # Falta de , no final
localizacao VARCHAR(30) # uso desnecessário da ,
);

-- tabela funcionarios
CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(80), # Faltou vírgula
salario DECIMAL(8.2), # Faltou ,
data_admissao DATE, 
id_setor INT # , desnecessária e incorreta 
); 
-- inserindo setores
INSERT INTO setores (nome_setor, localizacao) VALUES
('Administrativo', '1º andar'), # Auência da ,
('Financeiro', '2º andar'),
('Produção', 'Galpão A'),
('Limpeza', 'Térreo'); # Falta de , entre os valores limpeza e téreo

select * from setores; # nome errado da tabela

-- inserindo funcionários
INSERT INTO funcionarios (nome_funcionario, salario, data_admissao, id_setor) VALUES
('Carlos Silva', 3500.00, '2022-03-01', 1),
('Maria Souza', 4100.00, '2021-08-10', 2),
('João Lima', 2800, '2023-02-20', 3),
('Fernanda Alves', '3200', '2024-01-15', 4);

-- consulta
SELECT * FROM funcionarios;
