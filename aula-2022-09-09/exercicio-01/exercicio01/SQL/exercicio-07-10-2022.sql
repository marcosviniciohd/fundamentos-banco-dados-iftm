use exercicio01;
show tables;

SELECT f.nome, sexo from funcionario f INNER JOIN cargo c on f.cod_cargo = c.cod_cargo WHERE c.nome = 'Desenvolvedor';
SELECT f.nome, d.sigla FROM funcionario f, departamento d;
SELECT f.nome, f.sexo, c.salario FROM funcionario f, cargo c where f.data_adm >= 2009;
SELECT f.nome, f.data_adm, d.nome FROM funcionario f, departamento d where f.sexo = 'F';
SELECT * FROM funcionario f, departamento d where d.nome = 'informática' or d.nome = 'financeiro';
SELECT f.nome, c.nome, c.salario, d.nome FROM funcionario f, departamento d, cargo c where c.nivel = 'jr' and f.data_adm = 2008;







