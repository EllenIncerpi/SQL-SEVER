# SQL-SEVER

create database projeto;

use projeto;

create table cliente{
    id_cliente       integer primary key,
    nome_cliente     varchar(100) not null,
    sexo_cliente     char(1)      not null,
	endereço_cliente varchar(100) not null,
	bairro_cliente   varchar(50)  not null,
	cidade_cliente   varchar(50)  not null,
	estado_cliente   char(2)      not null,
	cep_cliente      varchar(8)   not null,
	cpf_cnpj_cliente varchar(14)   
