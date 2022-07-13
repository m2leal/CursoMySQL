USE pedido_venda;

INSERT INTO produto (nome, valor_unitario, quantidade_estoque)
	values ('Papel A3', 13.00, 100);

INSERT INTO produto (nome, valor_unitario, quantidade_estoque)
	values ('Cola Comum', 15.00, 50);
    
-- Seleciona só os IDs 1 e 3
SELECT * FROM produto
	WHERE id IN (1,3);

