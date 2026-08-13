-- Criar banco de dados
CREATE DATABASE papelaria_dn; # Faltou A no database e ; nofinal

USE papelaria_dn; # Faltou ; no final

-- Criar tabela produtos
CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT, # Faltou , no final
nome VARCHAR(50), # Faltou parênteses 
preco DECIMAL(10.2), # Faltou , e decimal escrito incorretamente
quantidade INT,
ativo BOOL # faltou , no último campo
);

-- Inserir registros
INSERT INTO produtos (nome, preco, quantidade, ativo) # faaltou , entre preco,quantidade e ativo e faltou s em produtos
VALUES 
('Caneta Azul', 2.50, 100, TRUE),
('Lápis', 1.20, 200, TRUE),
('Caderno', 15.00, 50, 1),
('Borracha', 0.50, 300, TRUE);

-- Consultar dados
SELECT * FROM produtos; # faltou * e ; no final
