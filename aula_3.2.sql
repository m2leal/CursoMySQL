USE pedido_venda;

INSERT INTO produto (nome, valor_unitario, quantidade_estoque) 
	VALUES('Papel A4', 12.00, 100);

INSERT INTO pedido (data_criacao, data_entrega, valor_frete, valor_total, cliente_id)
	VALUES ('2014-07-11 15:22:00', '2014-07-15', 33.00, 400.00, 2);

INSERT INTO item_pedido (pedido_id, produto_id, quantidade)
	VALUES (4, 1, 4);

INSERT INTO item_pedido (pedido_id, produto_id, quantidade)
	VALUES (4, 2, 2);

SELECT * FROM pedido;

-- Pedidos de um determinado cliente
SELECT p.*
	FROM pedido p
	   , cliente c
	WHERE p.cliente_id = c.id
    AND c.nome = 'João Silva';
    
SELECT * FROM cliente;
SELECT * FROM pedido;
SELECT * FROM item_pedido;
SELECT * FROM produto;

-- Todos os produtos de um determinado cliente
SELECT pr.nome
     , i.quantidade
  FROM cliente c
     , pedido pe
     , item_pedido i
     , produto pr
  WHERE c.id = pe.cliente_id
    AND pe.id = i.pedido_id
    AND i.produto_id = pr.id
    AND c.nome = 'Maria Santos';