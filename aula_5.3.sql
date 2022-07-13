USE pedido_venda;

SELECT * FROM pedido;

-- AVG - Média
SELECT forma_pagamento, AVG(valor_total) total_vendas
	FROM pedido
    GROUP BY forma_pagamento;
