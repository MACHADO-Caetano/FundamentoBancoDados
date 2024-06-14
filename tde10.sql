/*professor(id int not null PK, nome not null char(30), especializacao char(30), idade int)

disciplina(id_disc int not null PK, disciplina not null varchar(20), carga_horaria int, id_professor int not null references professor(id))

software(id int not null PK, nome char(50), tipo varchar (20))

utiliza(cod_utiliza int not null PK, cod_disciplina int not null references disciplina(id_disc), cod_software int not null references software(id), tempo_utilizacao int)
*/

create table professor(
    id int not null primary key,
    nome char(30) not null,
    especializacao char(30),
    idade int
)

create table disciplina(
    id_disc int not null primary key,
    disciplina varchar(20) not null,
    carga_horaria int
    id_professor int not null,
    constraint professor_leciona_disciplina
    foreign key id_professor int not null references professor(id)
)

create table software(
    id int not null primary key,
    nome char (50),
    tipo varchar(20)    
);

create table utiliza(
    cod_utiliza int not null primary key,
    cod_disciplina int not null
    constraint software_utiliza_disciplina
    foreign key cod_disciplina int not null references disciplina(id_disc),
    cod_software int not null
    constraint software_utiliza_disciplina
    foreign key cod_software int not null references software(id),
    tempo_utilização int
);