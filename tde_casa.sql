--Terminar no finde
create table aluno
(
    id int not null,
    nome varchar(30) not null,
    Primary Key(id)
)
create table departamento
(
    id int not null,
    nome varchar(30),
    Primary Key(id)
)
create table professor(
    id int not null,
    nome varchar(30) not null,
    Primary Key(id)
)
create table curso(
    id int not null,
    nome varchar(30) not null,
    id_depto int,
    constraint departamento_possui_curso
    foreign key (id_depto) references departamento(id),
    Primary Key(id)
)
create table disciplina(
    id int not null,
    nome varchar(30) not null,
    id_prof int,
    constraint professor_da_disciplina
    primary key(id)
    foreign key(id_prof) references professor(id)
)
create table matricula(
    cod_matricula int not null,
    id_aluno int not null,
    id_disciplina int not null,
    data_matr date,
    primary key(cod_matricula),
    constraint aluno_matricula_disciplina
    foreign key (id_disciplina) references disciplina(id)
    constraint disciplina_matriculado_aluno
    foreign key (id_aluno) references aluno(id)
)
