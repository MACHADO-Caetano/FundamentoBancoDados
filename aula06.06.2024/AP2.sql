create table empregado_gerencia_departamento(
    num_emp int not null primary key,
    num_depto into not null,
    salario float,
    nome_emp varchar(50),
    nome_depto varchar(100)
)

create table projeto(
    id_projeto int not null primary key,
    nome_projeto varchar(50),
    id_depto int not null,
    constraint projeto_controla_departamento
    foreign key (id_depto) references empregado_gerencia_departamento(num_emp)
)

create table dependente(
    id_dep int not null primary key,
    nome_dep varchar(50) not null,
    data_nasc date,
    id_emp int not null,
    constraint empregado_possui_dependente
    foreign key (id_emp) references empregado_gerencia_departamento(num_emp)
)

create table participa_de(
    hs_trab float not null,
    cod_emp int not null,
    cod_projeto int not null,
    constraint empregado_participade_projeto
    foreign key (cod_emp) references empregado_gerencia_departamento(num_emp),
    constraint projeto_participade_empregado
    foreign key (cod_projeto) references projeto(id_projeto)
)

-- fazendo as inserções
insert into empregado_gerencia_departamento values (01, 01, 1.400, "João", "Serviços Gerais")
insert into empregado_gerencia_departamento values (02, 02, 2456, "Maria", "Administradora Geral")
insert into empregado_gerencia_departamento values (03, 03, 5000, "Robertinho", "Gerente")

insert into dependente values (01, "Juan", 20240504, 01)
insert into dependente values (02, "Juliana", 20070812, 01)
insert into dependente values (03, "Alva", 19920418, 03)

insert into projeto values (001, "Comercial Database", 01)
insert into projeto values (002, "Financeiro Homepage", 03)
insert into projeto values (003, "Contabilidade Acess key", 03)

insert into participa_de values (8, 2, 3)
insert into participa_de values (6, 2, 1)
insert into participa_de values (12, 3, 2)