--3) Relatório de produtos e categorias
select * from categoria a inner join produto b on a.id = b.id order by a.nome;
select * from categoria a inner join produto b on a.id = b.id order by a.nome;
select a.id,a.nome,b.id,b.nome,b.preco from categoria a inner join produto b on a.id = b.id order by a.nome;

--4) Relatório completo de pedidos
select  cliente.id,cliente.nome, categoria.nome, produto.nome,item_pedido.preco_unitario,item_pedido.quantidade, pedido.data from cliente inner join categoria on cliente.id = categoria.id inner join produto on produto.id = categoria.id inner join item_pedido on item_pedido.id = produto.id inner join pedido on pedido.id = item_pedido.id;
--5) Relatório de vendas por categorias
select categoria.nome , sum(item_pedido.preco_unitario) AS RESULTADO  FROM categoria inner join item_pedido on categoria.id = item_pedido.id group by categoria.nome ;
--6) Relatório analítico de pedidos
select count(item_pedido.quantidade)as QUANTIDADE_DE_PEDIDOS, sum(item_pedido.quantidade) AS QUANTIDADE_VENDIDA,min(item_pedido.preco_unitario) as PEDIDO_MAIS_BARATO, max(item_pedido.preco_unitario)AS MAIS_CARO, avg(item_pedido.preco_unitario) AS MONTATE  FROM item_pedido ;
--7) Relatório de clientes mais fiéis
select nome,count(nome) as Comprou_quantas_vezes from cliente group by nome order by cliente.nome;