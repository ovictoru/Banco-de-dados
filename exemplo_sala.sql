# Comando para criação de Banco de Dados
CREATE DATABASE db_quitanda;

# Comando que indica qual Banco de Dados desejo 
USE db_quitanda;

# Comando que cria tabela dentro de Banco de Dados
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),
    
    PRIMARY KEY(id)
);

# SELECT esta pedindo buscar os dados de um db e FROM esta indicando de qual lugar, qual tabela
# Comando que trás todos os dados da tabela de produtos
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, preco) 
VALUES	("Maçã", 3.00);

# Desativa o modo seguro do mysql e permite update e delete
SET SQL_SAFE_UPDATES = 0;

#Atualização de um dado dentro da minha tabela
UPDATE tb_produtos SET preco = 7.90 WHERE id=4;
