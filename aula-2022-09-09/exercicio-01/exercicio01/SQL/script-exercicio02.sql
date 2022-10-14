use exercicio01;

select cod_cargo, cod_depto, nome, data_adm, sexo from funcionario where year(data_adm) = 2008 and sexo = 'F';
select nome from cargo where salario >= 2000 and salario <= 5000;
select nome from cargo where salario between 2000 and 5000;
select nome, salario from cargo where salario > 3000;
select * from funcionario where nome = 'Fernando Silva';
select * from funcionario where nome like '%eira';
select * from funcionario where nome like '%Silv%';
select nome, data_adm from funcionario where nome like 'P%' or nome like 'M%';
select * from funcionario where nome not like 'J%' and nome not like 'G%';
select nome, sexo from funcionario where nome like '% Silva%';

select cod_depto, sigla from departamento where nome in ('informatica', 'financeiro');
select cod_func, nome from funcionario where sexo not in ('F') and cod_depto not in (1, 3);



