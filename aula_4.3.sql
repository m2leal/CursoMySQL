USE pedido_venda;

-- Como root
GRANT DELETE ON pedido_venda.* to 'algaworks'@'localhost';

SELECT * FROM pedido
	WHERE cliente_id IS NULL;

-- 1 linha deve ser removida
DELETE FROM pedido
	WHERE cliente_id IS NULL