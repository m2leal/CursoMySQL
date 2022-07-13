USE pedido_venda;

-- Subselect
-- Todos os clientes que já fizeram algum pedido e pagaram em dinheiro
SELECT nome,
	   email
	FROM cliente
    WHERE id IN (SELECT cliente_id FROM pedido WHERE forma_pagamento = 'DINHEIRO');
    
-- Todos os clientes que já fizeram algum pedido e pagaram com cartão de crédito
SELECT nome,
	   email
	FROM cliente
    WHERE id IN (SELECT cliente_id FROM pedido WHERE forma_pagamento = 'CARTAO DE CREDITO');
