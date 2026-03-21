create database easy_swap;

use easy_swap;

create table usuario(
   id_cliente int primary key unique, 
   nome varchar(100) not null,
   email varchar(100) not null,
   senha varchar(100) not null,
   telefone char(11) not null unique,
   cpf char(11) not null unique
);

create table admnistrador(
   id_administrador int primary key unique, 
   nome varchar(100) not null,
   email varchar(100) not null,
   senha varchar(100) not null,
   telefone char(11) not null unique,
   cpf char(11) not null unique,
   data_cadastro timestamp 
);

create table pedido(
   id_pedido int primary key unique, 
   data_pedido timestamp, 
   valor_total decimal (10, 2),
   foreign key (fk_id_produto) references produto(id_produto)
);

create table foto_ticket(
   id_foto varchar(100), 
   data_pedido timestamp,
   valor_total float,
   foreing key (fk_id_ticket) references ticket(id_ticket)
);

create table produto(
    id_pedido int primary key unique,
    nome_produto varchar(100) not null,
    categoria varchar(100) not null
);

create table ticket(
    id_ticket int primary key unique,
    motivo varchar(100),
    status_ticket varchar(100),
    descricao varchar(300),
    solucao_desejada varchar(100),
    tipo_solicitacao varchar(100),
    reversa char(11),
    data_created_at timestamp,
    data_updated_at timestamp,
    foreign key (fk_id_pedido) references pedido(id_pedido),
    foreign key (fk_id_cliente) references cliente(id_cliente)

);

create table relacao(
    id_adm_analise int primary key unique,
    foreign key (fk_id_administrador) references administrador(id_administrador),
    foreign key (fk_id_ticket) references ticket
);

   