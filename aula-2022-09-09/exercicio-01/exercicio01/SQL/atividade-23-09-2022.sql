-- criando a base de dados empresa
create database empresa;
-- selecionando a base de dados empresa para uso
use empresa;
-- criando a tabela cargo dentro da base de dados empresa
create table cargo(
                      cod_cargo int auto_increment,
                      nome varchar(40),
                      nivel varchar(20),
                      salario numeric(7,2),
                      Primary key(cod_cargo)
);
-- criando a tabela departamento dentro da base de dados empresa
create table departamento(
                             cod_depto int auto_increment,
                             nome varchar(40),
                             sigla varchar(10),
                             Primary key(cod_depto)
);
-- criando a tabela funcionario dentro da base de dados empresa
create table funcionario(
                            cod_func int auto_increment,
                            nome varchar(50),
                            data_adm date,
                            sexo char(1),
                            cod_cargo int,
                            cod_depto int,
                            Primary key(cod_func),
                            foreign key(cod_cargo) references cargo(cod_cargo),
                            foreign key(cod_depto) references departamento(cod_depto)
);

-- inserindo dados na tabela cargo
insert into cargo(cod_cargo,nome,nivel,salario) values
                                                    (1,'Analista de Sistemas','JR',1500),
                                                    (2,'Desenvolvedor','JR',2100),
                                                    (3,'Desenvolvedor','Pleno',3200),
                                                    (4,'Atendente','NA',980),
                                                    (5,'Contador','NA',4500);


-- selecionando os dados da tabela cargo
select * from cargo;

-- inserindo dados na tabela departamento
insert into departamento(cod_depto,nome,sigla) values
                                                   (1,'Informática','INF'),
                                                   (2,'Financeiro','FIN'),
                                                   (3,'Pessoal','RH');

SELECT * FROM departamento;


-- inserindo dados na tabela funcionario
insert into funcionario(cod_func,nome,data_adm,sexo,cod_cargo,cod_depto) values
                                                                             (1,'João Nogueira','2008-03-12','M',1,1),
                                                                             (2,'Maria Silveira','2008-03-20','F',4,3),
                                                                             (3,'Marcos Silva','2008-07-05','M',2,1),
                                                                             (4,'Gabriel Pereira','2008-07-10','M',5,2),
                                                                             (5,'Carla Junqueira','2008-08-15','F',1,1),
                                                                             (6,'Janete Rosa','2008-10-01','F',4,3),
                                                                             (7,'Fernando Silva','2009-02-03','M',3,1),
                                                                             (8,'Marília Vieira','2009-02-05','F',2,1),
                                                                             (9,'Patrícia Chaves','2009-03-01','F',5,2),
                                                                             (10,'João Marques','2008-03-15','M',3,1);

SELECT * FROM funcionario;

-- ------------------------------------------------------------------------------------------------------------------------------------- --

SELECT c.cod_cargo, d.cod_depto, f.nome FROM funcionario f, departamento d, cargo c where year(f.data_adm) = 2008;

