CREATE DATABASE revisao;
USE revisao;


CREATE TABLE produto (
cor varchar(255),
preco decimal(6,2),
nome_produto varchar(255),
codigo int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE cliente (
id_cliente int PRIMARY KEY AUTO_INCREMENT,
nome_cliente varchar(255),
email varchar(255),
estado varchar(2)
);

CREATE TABLE compras (
nf int PRIMARY KEY AUTO_INCREMENT,
data_compra date,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY(codigo) REFERENCES produto (codigo)
);

