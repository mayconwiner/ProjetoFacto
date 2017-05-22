
CREATE DATABASE LOJA;

USE LOJA;
-- Criação da tabela artigos .

CREATE table artigos(id_artigo varchar(10) primary key,
						descricao varchar(50) not null,
						preco double not null,
						quantidade int not null);
						

--criação da tabela ramo 
CREATE TABLE RAMO( id_ramo varchar(10) primary key,
					nome_ramo varchar(50) not null);
--criação da tabela empregados
CREATE TABLE EMPREGADOS(id_empregados varchar(10) primary key,
						nome_empregado varchar(30) not null,
						sobrenome varchar(50) not null,
						endereco varchar(100) not null,
						data_nascimento DATE NOT NULL,
						DATA_ENTRADA DATE NOT NULL,
						TELEFONE VARCHAR(10) NOT NULL,
						FUNCAO VARCHAR(30) NOT NULL,
						ID_RAMO VARCHAR(10),
						FOREIGN KEY (ID_RAMO) REFERENCES RAMO (ID_RAMO) ON DELETE CASCADE ON UPDATE CASCADE );
						
-- CREAÇÃO DA TABELA DE ARTIGOS E RAMO 
CREATE TABLE RAMO_TEM_ARTIGO(
ID_ARTIGO VARCHAR(10) not null,
id_ramo varchar (10) not null,
foreign key (id_artigo) references artigos(id_artigo) on delete cascade on update cascade, 
foreign key (id_ramo) references ramo(id_ramo) on delete cascade on update cascade
);

--criação da tabela relacao entre empregados e ARTIGOS --VENDAS

CREATE TABLE VENDAS( 
	ID_ARTIGO VARCHAR(10) NOT NULL,
	ID_EMPREGADOS VARCHAR(10) NOT NULL,
	QUANTIDADE_VENDA int not null,
	DATA_VENDA DATE NOT NULL,
	foreign key (id_artigo) references artigos(id_artigo) on delete cascade on update cascade, 
);














						
