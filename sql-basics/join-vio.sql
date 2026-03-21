-- join para listar todos os ingressos, incluindo os que não foram vendidos
select
    i.id_ingresso, 
    i.tipo, 
    ic.quantidade,
    round ((i.preco * ic.quantidade), 2) as valor_total
from
    ingresso i left join ingresso_compra ic on i.id_ingresso =  ic.fk_id_ingresso 
order by id_ingresso;    

-- visualizando apenas os ingressos que não foram comprados utilizando where
select
    i.id_ingresso, 
    i.tipo, 
    ic.quantidade,
    round ((i.preco * ic.quantidade), 2) as valor_total
from
    ingresso i left join ingresso_compra ic on i.id_ingresso =  ic.fk_id_ingresso 
where quantidade is null;

-- visualizando os ingressos que não foram comprados pela existencia da fk_id_compra (só existe se existir compra)
select
    i.id_ingresso, 
    i.tipo, 
    ic.quantidade,
    round ((i.preco * ic.quantidade), 2) as valor_total
from
    ingresso i left join ingresso_compra ic on i.id_ingresso =  ic.fk_id_ingresso 
where fk_id_compra is null;






-- full join (união left e right)
-- right join
select
    c.id_compra,
    i.id_ingresso,
    i.tipo,
    ic.quantidade,
from 
    ingresso_compra ic right join compra c
    on c.id_compra = ic.fk_id_compra
    right join ingresso i
    on ic.fk_id_ingresso = i.id_ingresso
    order by id_compra;

union    

-- left    
select
    c.id_compra,
    i.id_ingresso,
    i.tipo,
    ic.quantidade,
from 
    compra c left join ingresso_compra ic
    on c.id_compra = ic.fk_id_compra
    left join ingresso i
    on ic.fk_id_ingresso =id_ingresso
    
order by id_compra;

-- sempre que utilizamos o full join, na segunda execução ele esta comparando 4 tabelas, duas a esquerda e duas a direita

