--1) Criar banco de dados Comex
create database if not exists comex  default character set utf8mb4 default collate utf8mb4_general_ci;
use comex;
create table if not exists categoria(
id bigint auto_increment not null,
nome varchar(100),
primary key(id)
)default charset = utf8mb4;

create table if not exists produto (
id bigint auto_increment not null,
nome varchar(255),
preco decimal(10,2),
categoria_id bigint ,
primary key(id),
foreign key (categoria_id) references categoria (id)

)default charset  = utf8mb4;

create table if not exists cliente(
id bigint auto_increment not null,
nome varchar(255),
primary key(id)
) default charset = utf8mb4;

create table if not exists pedido (
id bigint auto_increment,
data datetime,
cliente_id bigint,
primary key(id),
foreign key (cliente_id) references cliente (id)
)default charset = utf8mb4;


create table if not exists item_pedido(
id bigint auto_increment,
pedido_id bigint ,
produto_id bigint ,
preco_unitario decimal(10.2),
quantidade integer,

primary key(id),
foreign key(produto_id) references produto(id),
foreign key(pedido_id) references pedido(id)
)default charset = utf8mb4;

