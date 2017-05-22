
CREATE DATABASE LOJA;

USE LOJA;
-- Criação da tabela artigos .

CREATE TABLE artigos (
id_artigo varchar(10) NOT NULL PRIMARY KEY,
descricao varchar(50) not null,
preco double not null,
quantidade int not null);

CREATE TABLE ramo(id_ramo varchar(10) primary key,
nome_ramo varchar(50) not null);

CREATE TABLE empregados (id_empregado varchar(10) primary key,
nome_empregado varchar(30) not null,
sobrenome varchar(50) not null,
endereco varchar(100) not null,
data_nascimento DATE NOT NULL,
data_entrada DATE NOT NULL,
telefone varchar(10) not null,
id_ramo varchar(10),
FOREIGN KEY (id_ramo) REFERENCES ramo (id_ramo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE ramo_tem_artigo(
id_artigo varchar(10) not null,
id_ramo varchar(10) not null,
foreign key (id_artigo) references artigos(id_artigo) on delete cascade on update cascade);

CREATE TABLE VENDAS(
id_artigo varchar(10) NOT NULL,
id_empregados varchar(10) not null,
quantidade_venda int not null,
data_venda date not null,
foreign key (id_artigo) references artigos(id_artigo) on delete cascade on update cascade );