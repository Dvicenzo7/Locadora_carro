CREATE DATABASE locveiculos

CREATE TABLE carro (
    id_carro int not null auto_increment primary key,
    id_cat int,
    disponivel int,
    carro varchar(50),
    cor varchar(50),
    placa varchar(10),
    hidraulico tinyint(1),
    vidro_eletrico tinyint(1), 
    trava_eletrica tinyint(1), 
    automatico tinyint(1) 
);


CREATE TABLE cat (
id_cat int not null auto_increment primary key,
cat_cod varchar(5),
valor_diaria double
);

ALTER TABLE carro
add foreign key (id_cat) references cat(id_cat);

CREATE TABLE tp_pag (
    id_pgmt int not null auto_increment primary key,
    op_pagmto varchar(25)
);

CREATE TABLE cliente (
    id_cliente int not null auto_increment primary key,
    nome_cliente varchar(100),
    CPF_cliente varchar(15),
    end_cliente varchar(100)
);


