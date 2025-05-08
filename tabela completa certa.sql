create database mercadorias;

use mercadorias;

create table cliente(
    id_cliente       integer primary key,
    nome_cliente     varchar(100) not null,
    sexo_cliente     char(1)      not null,
	endereço_cliente varchar(100) not null,
	bairro_cliente   varchar(50)  not null,
	cidade_cliente   varchar(50)  not null,
	estado_cliente   char(2)      not null,
	cep_cliente      varchar(8)   not null,
	cpf_cnpj_cliente varchar(14)   
);

create table mercadoria(
id_mercadoria        integer primary key,
descricao_mercadoria  varchar(100)     not null,
valor_mercadoria     numeric(5,2)     not null,
);

create table notafiscal(
id_notafiscal    integer primary key,
id_cliente       integer not null,
data_notafiscal  datetime not null
);

create table itens_nota_fiscal(
id_notafiscal    integer not null,
id_mercadoria    integer not null,
qtde_mercadoria  numeric(10,2) not null default 0,
valor_venda      numeric(5,2) not null default 0,
perc_icms        numeric(5,2) not null default 0,
);

alter table notafiscal 
add constraint fk_notafiscal_id_cliente
foreign key (id_cliente)
references cliente(id_cliente);


alter table itens_nota_fiscal 
add constraint fk_itens_notafiscal_id_notafiscal
foreign key (id_notafiscal)
references notafiscal(id_notafiscal);

alter table itens_nota_fiscal 
add constraint fk_itens_notafiscal_id_mercadoria
foreign key (id_mercadoria)
references mercadoria(id_mercadoria);

