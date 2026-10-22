-- Feito por Davi Leonardo(Solo)

-- Cria a base de dados.
DROP DATABASE IF EXISTS petshop_db;

CREATE DATABASE petshop_db;
USE petshop_db;

-- Cria a tabela de clientes.
CREATE TABLE clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL UNIQUE,
cpf varchar(15) not null,
telefone varchar(20) NOT NULL,
bairro VARCHAR(50) NOT NULL
);

-- Cria a tabela de animais.
CREATE TABLE animais (
id INT AUTO_INCREMENT PRIMARY KEY,
id_tutor INT NOT NULL,
nome VARCHAR(100) NOT NULL,
especie VARCHAR(100) NOT NULL,
raca VARCHAR(70) NOT NULL,
data_nascimento DATE NOT NULL,
peso decimal(10,2) not null,

-- Chave estrangeira que conecta os assinantes aos planos.
FOREIGN KEY (id_tutor) REFERENCES clientes(id)
);

create table servicos (
id int auto_increment primary key,
banho VARCHAR(70) NOT NULL,
tosa VARCHAR(100) NOT NULL,
consulta_veterinaria VARCHAR(70) NOT NULL,
vaninacao VARCHAR(70) NOT NULL,
descricao varchar(70) not null,
preco decimal(10,2) not null

);

create table atendimentos (
id int auto_increment primary key,
id_animal INT NOT NULL,
id_servico INT NOT NULL,
data_atendimento date not null,
valor_final decimal(10,2) not null,

FOREIGN KEY (id_animal) REFERENCES animais(id),
FOREIGN KEY (id_servico) REFERENCES servicos(id)
);
