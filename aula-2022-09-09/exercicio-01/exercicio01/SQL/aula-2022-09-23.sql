use exercicio01;

desc departamento;
desc cargo;

-- select cod_cargo from cargo and

select nome, cod_cargo, data_adm from funcionario where data_adm between '2009-01-01' and '2009-12-31';

select nome, cod_cargo, data_adm, sexo from funcionario where sexo = 'F' and data_adm between '2008-01-01' and '2008-12-31';

select * from funcionario where nome like '%a';

Primeira leta tem que ser ( J )
select * from funcionario where nome like 'J%';
select * from funcionario where nome like '% M%';
select * from funcionario where nome like '% S%';
select * from funcionario where nome like '%a %' and nome like '%a';
select * from funcionario where nome like '%a %' or nome like '%a';


select * from funcionario where funcionario.cod_depto in (2, 3);
select * from funcionario where funcionario.cod_cargo not in (1, 2);
select * from funcionario where funcionario.cod_depto = 2 or cod_depto = 3;

select * from cargo where nome in ('atendente', 'contador');

select * from departamento where nome in ('Financeiro','pessoal');

select * from departamento;

select nome from funcionario where sexo not in ('F');

select nome, data_adm, cod_depto from funcionario where cod_depto not in (1, 2);

select * from funcionario where data_adm is not null;


select nome, cod_cargo, data_adm from funcionario where data_adm like '2009%' and sexo = 'F';
select nome, cod_cargo, data_adm from funcionario where data_adm like '%-02-%';
select nome, cod_cargo, data_adm from funcionario where year(data_adm) = 2009;
select nome, cod_cargo, data_adm from funcionario where month(data_adm) = 02;





select * from funcionario where funcionario.nome not like '%dor';


select f.nome, d.nome from funcionario f, departamento d
where f.cod_depto = d.cod_depto and d.nome = 'informatica';

SELECT f.nome
FROM Funcionario f, Departamento d
WHERE f.cod_depto = d.cod_depto and d.nome = 'Informática';

SELECT f.nome, f.data_adm, c.nome, d.nome
FROM Funcionario f, Cargo c, Departamento d
WHERE f.cod_cargo = c.cod_cargo and f.cod_depto = d.cod_depto;

-- Inner Join
SELECT *
FROM Funcionario f INNER JOIN Departamento d ON f.cod_depto = d.cod_depto
WHERE d.nome = 'Informática';

SELECT f.nome, f.data_adm, c.nome, d.nome
FROM funcionario f INNER JOIN cargo c ON f.cod_cargo = c.cod_cargo INNER JOIN departamento d ON f.cod_depto = d.cod_depto;



