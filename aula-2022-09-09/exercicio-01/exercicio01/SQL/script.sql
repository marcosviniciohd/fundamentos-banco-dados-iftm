create database exercicio01;
use exercicio01;


-- DDL
create table cargo(
    cod_cargo int not null auto_increment primary key,
    nome varchar(50),
    nivel varchar(10),
    salario double
);
desc cargo;

CREATE TABLE departamento(
    cod_depto int not null auto_increment primary key,
    nome varchar(15),
    sigla char(5)
);

desc departamento;

CREATE TABLE funcionario(
    cod_func int not null auto_increment,
    nome varchar(50),
    data_adm date,
    sexo char(1),
    cod_cargo int not null,
    cod_depto int not null,
    primary key (cod_func),
    foreign key (cod_cargo) references  cargo (cod_cargo),
    foreign key (cod_depto) references departamento (cod_depto)
);

-- DML
INSERT INTO  cargo
    (NOME, NIVEL, SALARIO) VALUE
    ('Analista de Sistemas', 'JR', 1500.00),
    ('Desenvolvedor', 'JR', 2100.00),
    ('Desenvolvedor', 'Pleno', 3200.00),
    ('Atendente', 'NA', 980.00),
    ('Contador', 'NA', 4500.00);

select * from cargo;

INSERT INTO departamento
    (nome, sigla) VALUES
    ('Informática', 'INF'),
    ('Financeiro', 'FIN'),
    ('Pessoa', 'RH');

select * from departamento;

INSERT INTO funcionario
    (nome, data_adm, sexo, cod_cargo, cod_depto)
VALUES
     -- ('João Nogueira', '2008-12-03', 'F', 1, 1),
     -- ('Maria Silveira', '2008-03-20', 'F', 4, 3),
     -- ('Marcos Silva', '2008-07-05', 'M', 2, 1),
     -- ('Gabriel Pereira', '2008-07-10', 'M', 5, 2),
     -- ('Carla Junqueira', '2008-08-15', 'F', 1, 1),
     -- ('Janete Rosa', '2008-10-01', 'F', 4, 3),
     -- ('Fernando Silva', '2009-02-03', 'M', 3, 1),
     -- ('Marília Vieira', '2009-02-05', 'F', 2, 1),
     -- ('Patrícia Chaves', '2009-01-03', 'F', 5, 2),
    -- ('João Marques', '2008-03-15', 'M', 3, 1);
    -- ('João Silva Silveira', '2008-05-20', 'M', 2, 1);
    ('Paulo Henrique das Dores', '2002-12-30', 'M', 4, 3),
    ('Paulo Doidão da Silva Sauro', '2002-12-30', 'M', 4, 3);

select * from funcionario;