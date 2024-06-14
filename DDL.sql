--Primeira experiência com SQL

--isto é um comentário
/*
isto também é um comentário
um longo na real
*/

--Padrões de Nomes
--snake_case como_é_mais_usado_para_o_sql

-- clientes(cpf int not null PK, nome varchar(30), idade int, rg int not null)
-- enderecos(id int not null PK, rua varchar(50), numero int, cidade varchar(20), bairro varchar(30), uf char (2), cliente_cpf int not null references clientes(cpf))

create table clientes
(
    cpf int not null primary key,
    nome varchar not null (30),
    idade int,
    rg int not null
)

create table enderecos(
    id int not null primary key,
    rua varchar(50) not null,
    numero int not null,
    cidade varchar(20) not null,
    bairro varchar(30) not null,
    uf char (2),
    cliente_cpf int not null
    constraint clientes_tem_enderecos
    foreign key (cliente_cpf) references clientes(cpf)
)