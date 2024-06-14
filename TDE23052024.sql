create table fornecedor(
    codigo int not null primary key,
    nome varchar(30) not null
)
create table categoria(
    codigo int not null primary key,
    nome varchar(30) not null
)
create table produtos(
    codigo int not null primary key,
    descricao varchar(200) not null,
    data_cadastro date,
    cod_categoria int not null,
    valor_unitario int not null,
    constraint categoria_pertence_produtos
    foreign key (cod_categoria) references categoria(codigo)
)
create table pede(
    quantidade int not null primary key,
    valor_unitario int not null,
    data date,
    cod_produtos int not null,
    cod_fornecedor int not null,
	nome_fornecedor varchar(30) not null,
    constraint fornecedor_pede_produtos
    foreign key (cod_produtos) references produtos(codigo),
    constraint produtos_pede_fornecedor
    foreign key (cod_fornecedor) references fornecedor(codigo)
)

insert into fornecedor (codigo, nome) VALUES (1, "Macromix")
insert into fornecedor (codigo, nome) values (2, "Multipeças")
INSERT into fornecedor (codigo, nome) values (3, "Despachante")

insert into categoria (codigo, nome) values (1, "Mercado")
insert into categoria (codigo, nome) values (2, "Autopeças")
insert into categoria (codigo, nome) values (3, "Despachante")

insert into produtos (codigo, descricao, data_cadastro, cod_categoria, valor_unitario) values (1, "Produto do mercado", 20240530, 1, 30)
insert into produtos (codigo, descricao, data_cadastro, cod_categoria, valor_unitario) values (2, "Produto do mercado", 20241212, 1, 33)
insert into produtos (codigo, descricao, data_cadastro, cod_categoria, valor_unitario) values (3, "Produto da Autopeças", 20240223, 2, 300)
insert into produtos (codigo, descricao, data_cadastro, cod_categoria, valor_unitario) values (4, "Serviço do Despachante", 20240223, 3, 3000)

insert into pede (quantidade, valor_unitario, data, cod_produtos, cod_fornecedor, nome_fornecedor) values (12, 30, 20241212, 1, 1, "Macromix")
insert into pede (quantidade, valor_unitario, data, cod_produtos, cod_fornecedor, nome_fornecedor) values (34, 55, 20250101, 2, 2, "Multipeças")
insert into pede (quantidade, valor_unitario, data, cod_produtos, cod_fornecedor, nome_fornecedor) values (62, 10, 20240531, 3, 3, "Despachante")
