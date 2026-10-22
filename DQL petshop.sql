-- Feito por Davi Leonardo(Solo)

USE petshop_db;

-- 1
SELECT * from animais
where especie = 'Cachorro';

-- 2
SELECT descricao as 'Serviço', preco as 'Preço' 
FROM servicos 
ORDER BY preco desc;

-- 3
select * from atendimentos
order by data_atendimento desc;

-- exercicio 4

-- 1
select count(*) as 'Animais Cadastrados' from animais;

-- 2
select round(avg(peso),2 ) as 'Media peso', round(min(peso),2) as 'Menor peso', round(max(peso),2) 
as 'Maior peso' from animais;

-- 3
select especie, count(*) as 'Quantidade por especie' from animais
group by especie;

-- exercicio 5

-- 1
select A.nome as 'Nome Animal', C.nome as 'Nome tutor'
from animais A join clientes C
on A.id_tutor = C.id
where A.especie = 'Gato';

-- 2
select S.descricao as 'Serviço', sum(A.valor_final) as 'Valor Total'
from atendimentos A 
join servicos S on A.id_servico = S.id
group by S.id, S.descricao;

-- 3 
select A.nome as 'Animal', count(AT.id) as 'Quantidade de atendimento'
from animais A join atendimentos AT
on A.id = AT.id_animal
group by A.nome, AT.id_animal;