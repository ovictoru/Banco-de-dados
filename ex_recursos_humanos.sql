# Esse comando vai criar o Banco de dados do RH
CREATE DATABASE db_recursos_humanos;

# Esse comando vai indicar que estamos, alterando ou vizualizando as tabelas do banco de dados do RH
USE db_recursos_humanos;

# Esse comando vai criar a tabela de colaboradores dentro do banco de dados do RH
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(100),
    aniversario VARCHAR(105),
	cargo VARCHAR(110),
    salario INT,

	PRIMARY KEY (id)
);
# Esse comando, vai nos mostrar a vizualização geral da tabela de colaboradores
SELECT * FROM tb_colaboradores;

#Esse comando vai inserir informações dentro da tabela de colaboradores do banco de dados do RH
INSERT INTO tb_colaboradores(nome, aniversario, cargo, salario) 
VALUE ("Gabriel Farias" , "08 de Janeiro" , "Desenvolvedor Java" , 5000),("Maria Margarida", "20 de Junho" , "Scrum Master" , 10000),("Rodrigo Faro" , "30 de Maio" , "Auxiliar de RH" , 1200),("Sandra de Sá" , "05 de Dezembro" , "Assistente de RH" , 1800), ("Abiola" , "20 de Outubro" , "Diretor Geral" , 20000);

#Esse comando vai nos mostrar a vizualização dos colaboradores da tabela que ganham + de 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

##Esse comando vai nos mostrar a vizualização dos colaboradores da tabela que ganham - de 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

#Esse comando vai alterar a informação "nome" dentro da tabela
UPDATE 
	tb_colaboradores
SET
	nome = 'Renato Gomes'
WHERE
	id = 2